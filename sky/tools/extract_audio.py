#!/usr/bin/env python3
"""Extract audio from Sky's FMOD banks.

FMOD Studio banks (`.assets.bank` / `.streams.bank`) contain RIFF `FEV ` containers
with one or more `SND ` chunks; each SND chunk wraps an FSB5 sample bank.

Pipeline per FSB5 blob:
  carve FSB5 -> vgmstream (all subsongs) -> WAV -> ffmpeg -> OGG

Output: /workspace/sky/assets/audio/<bank_stem>/<part>_<idx>_<name>.ogg
        /workspace/sky/reports/audio_manifest.csv
"""
import csv, os, re, shutil, struct, subprocess, sys, tempfile
from concurrent.futures import ThreadPoolExecutor

BANK_DIR = '/workspace/sky/apk/assets/Data/Audio/Fmod/fmodandroid'
OUT_DIR = '/workspace/sky/assets/audio'
REPORT = '/workspace/sky/reports/audio_manifest.csv'
VGM = '/tmp/vgmstream/build/cli/vgmstream-cli'
WORK = '/tmp/sky_audio_work'


def carve_fsb(d, off):
    """Validate an FSB5 header at ``off`` and return (nsamples, total_size, mode)."""
    try:
        ver, ns, shs, nsize, dsize, mode = struct.unpack('<6I', d[off + 4:off + 28])
    except struct.error:
        return None
    if ver != 1 or not (0 < ns <= 20000) or shs > 64 * 1024 * 1024:
        return None
    total = 0x3c + shs + nsize + dsize
    if off + total > len(d) or dsize <= 0:
        return None
    return ns, total, mode


def find_fsbs(d):
    out, i = [], 0
    while True:
        i = d.find(b'FSB5', i)
        if i < 0:
            break
        r = carve_fsb(d, i)
        if r:
            out.append((i, r[0], r[1], r[2]))
            i += r[2]
        else:
            i += 4
    return out


def decode_and_convert(fsb_path, out_dir, part):
    """vgmstream -> wav, ffmpeg -> ogg. Returns manifest rows."""
    raw_dir = os.path.join(WORK, os.path.basename(fsb_path) + '.d')
    os.makedirs(raw_dir, exist_ok=True)
    subprocess.run([VGM, '-S', '0', '-o', os.path.join(raw_dir, f'{part}_?s_?n.wav'), fsb_path],
                   check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    wavs = sorted(os.listdir(raw_dir))

    def conv(fn):
        src = os.path.join(raw_dir, fn)
        base = fn[:-4]
        # sanitize name
        base = re.sub(r'[\\/:*?\"<>|]', '_', base).strip('_') or 'unnamed'
        dst = os.path.join(out_dir, base + '.ogg')
        if os.path.exists(dst):
            os.remove(src)
            dur = float(subprocess.run(['ffprobe', '-v', 'error', '-show_entries', 'format=duration',
                                        '-of', 'default=noprint_wrappers=1:nokey=1', dst],
                                       capture_output=True, text=True).stdout.strip() or 0)
            return [os.path.basename(out_dir), part, base, round(dur, 2), os.path.getsize(dst)]
        subprocess.run(['ffmpeg', '-y', '-loglevel', 'error', '-i', src,
                        '-c:a', 'libvorbis', '-q:a', '4', dst], check=True)
        dur = float(subprocess.run(['ffprobe', '-v', 'error', '-show_entries', 'format=duration',
                                    '-of', 'default=noprint_wrappers=1:nokey=1', dst],
                                   capture_output=True, text=True).stdout.strip() or 0)
        size = os.path.getsize(dst)
        os.remove(src)
        return [os.path.basename(out_dir), part, base, round(dur, 2), size]

    with ThreadPoolExecutor(max_workers=6) as ex:
        rows = list(ex.map(conv, wavs))
    shutil.rmtree(raw_dir, ignore_errors=True)
    return rows


def main():
    os.makedirs(OUT_DIR, exist_ok=True)
    os.makedirs(WORK, exist_ok=True)
    banks = sorted(f for f in os.listdir(BANK_DIR) if f.endswith('.bank'))
    all_rows = []
    for n, bank in enumerate(banks, 1):
        path = os.path.join(BANK_DIR, bank)
        d = open(path, 'rb').read()
        fsbs = find_fsbs(d)
        if not fsbs:
            print(f'[{n}/{len(banks)}] {bank}: no FSB5 (metadata-only)', flush=True)
            continue
        stem = os.path.splitext(bank)[0]
        out_dir = os.path.join(OUT_DIR, stem)
        os.makedirs(out_dir, exist_ok=True)
        for part, (off, ns, total, mode) in enumerate(fsbs):
            marker = os.path.join(out_dir, f'.done_p{part}')
            if os.path.exists(marker):
                print(f'[{n}/{len(banks)}] {bank} p{part}: already done, skip', flush=True)
                continue
            fsb = os.path.join(WORK, f'{stem}_p{part}.fsb')
            with open(fsb, 'wb') as f:
                f.write(d[off:off + total])
            try:
                rows = decode_and_convert(fsb, out_dir, f'p{part}')
            except subprocess.CalledProcessError as e:
                print(f'  FAILED {bank} part {part}: {e}', flush=True)
                continue
            all_rows += rows
            print(f'[{n}/{len(banks)}] {bank} p{part}: {ns} subsongs -> {len(rows)} ogg', flush=True)
            new = not os.path.exists(REPORT)
            with open(REPORT, 'a', newline='') as f:
                w = csv.writer(f)
                if new:
                    w.writerow(['bank', 'part', 'name', 'duration_s', 'size_bytes'])
                w.writerows(rows)
            open(marker, 'w').write('ok')
            os.remove(fsb)
    print(f'DONE: {len(all_rows)} ogg files -> {OUT_DIR}', flush=True)


if __name__ == '__main__':
    main()
