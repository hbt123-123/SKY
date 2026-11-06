#!/usr/bin/env python3
"""Batch-export Sky `.mesh` files to Wavefront OBJ.

Supported layouts (validated on this APK):
  flags 0x0 / 0x100  : LZ4-compressed base payload at 0x5a; vertex stride 16B,
                       s8 normals, half UVs, u16 triangle list (community layout).
  flags 0x1          : raw payload at 0x5c; quantized `ZipPos` positions at 0x1f0
                       (u16 x3 mapped onto the AABB at 0x60). No faces are emitted
                       unless a plain u16 index list is discovered (meshopt variants
                       store indices compressed, see report).
  other variants     : skipped and logged (14 `_StripAnim_CompOcc_ZipPos_*` wings).

Usage: python3 export_meshes.py [--limit N]
"""
import glob, lz4.block, os, struct, sys

SRC = '/workspace/sky/apk/assets/Data/Meshes/Bin'
OUT = '/workspace/sky/assets/meshes'
LOG = '/workspace/sky/reports/meshes.log'


def half_to_float(h):
    s = (h >> 15) & 1
    e = (h >> 10) & 31
    f = h & 1023
    if e == 0:
        v = (f / 1024.0) * (2.0 ** -14)
    elif e == 31:
        return float('nan')
    else:
        v = (1 + f / 1024.0) * (2.0 ** (e - 15))
    return -v if s else v


def find_index(buf, shared, tris, start):
    L = len(buf)
    for off in range(start, L - tris * 6, 2):
        ok = True
        for t in range(tris):
            if off + t * 6 + 6 > L:
                ok = False
                break
            a, b, c = struct.unpack_from('<HHH', buf, off + t * 6)
            if a >= shared or b >= shared or c >= shared:
                ok = False
                break
        if ok:
            return ('list', off)
    need = tris + 3
    for off in range(start, L - need * 2, 2):
        seq = struct.unpack_from('<%dH' % need, buf, off)
        if any(v >= shared for v in seq):
            continue
        ok = True
        for i in range(tris):
            a, b, c = seq[i], seq[i + 1], seq[i + 2]
            if a == b or b == c or a == c:
                ok = False
                break
        if ok:
            return ('strip', off)
    return (None, None)


def parse_compressed(d):
    flags = struct.unpack('<I', d[0x48:0x4c])[0]
    usize = struct.unpack('<I', d[0x56:0x5a])[0]
    if usize == 0 or usize > 100_000_000:
        raise ValueError('bad usize')
    buf = lz4.block.decompress(d[0x5a:], uncompressed_size=usize)
    shared = struct.unpack('<I', buf[0x74:0x78])[0]
    total = struct.unpack('<I', buf[0x78:0x7c])[0]
    uv_n = struct.unpack('<I', buf[0x84:0x88])[0]
    aabb = struct.unpack_from('<6f', buf, 0x04)
    if shared == 0 or shared > 200000 or total > 10_000_000:
        raise ValueError('bad counts')
    if 0xb3 + shared * 20 > len(buf):
        raise ValueError('stream overrun')
    verts = [struct.unpack_from('<3f', buf, 0xb3 + i * 16) for i in range(shared)]
    noff = 0xb3 + shared * 16
    normals = [tuple(v / 127.0 for v in struct.unpack_from('<3b', buf, noff + i * 4)) for i in range(shared)]
    uvo = noff + shared * 4
    uvs = []
    for i in range(uv_n):
        if uvo + i * 4 + 4 > len(buf):
            break
        a, b = struct.unpack_from('<HH', buf, uvo + i * 4)
        uvs.append((half_to_float(a), half_to_float(b)))
    tris = []
    kind, toff = find_index(buf, shared, total // 3, uvo + uv_n * 4)
    if kind == 'list':
        for t in range(total // 3):
            tris.append(struct.unpack_from('<HHH', buf, toff + t * 6))
    elif kind == 'strip':
        seq = struct.unpack_from('<%dH' % (total // 3 + 3), buf, toff)
        for i in range(total // 3):
            if i % 2 == 0:
                tris.append((seq[i], seq[i + 1], seq[i + 2]))
            else:
                tris.append((seq[i + 1], seq[i], seq[i + 2]))
    return verts, normals, uvs, tris, aabb


def parse_zippos(d):
    flags = struct.unpack('<I', d[0x48:0x4c])[0]
    shared = struct.unpack('<I', d[0xd0:0xd4])[0]
    attr = 0xd0
    if not (0 < shared < 200000):
        shared = struct.unpack('<I', d[0xcc:0xd0])[0]
        attr = 0xcc
    if not (0 < shared < 200000):
        raise ValueError('bad shared')
    if 0x1f0 + shared * 6 > len(d):
        raise ValueError('ZipPos overrun')
    mn = struct.unpack_from('<3f', d, 0x60)
    mx = struct.unpack_from('<3f', d, 0x6c)
    verts = []
    for i in range(shared):
        q = struct.unpack_from('<3H', d, 0x1f0 + i * 6)
        verts.append(tuple(mn[j] + q[j] / 65535.0 * (mx[j] - mn[j]) for j in range(3)))
    return verts, [], [], [], (mn + mx)


def write_obj(path, name, verts, normals, uvs, tris):
    with open(path, 'w') as f:
        f.write(f'o {name}\n')
        for v in verts:
            f.write(f'v {v[0]:.6g} {v[1]:.6g} {v[2]:.6g}\n')
        for n in normals:
            f.write(f'vn {n[0]:.4g} {n[1]:.4g} {n[2]:.4g}\n')
        for u in uvs:
            f.write(f'vt {u[0]:.6g} {u[1]:.6g}\n')
        has_n = bool(normals)
        has_t = bool(uvs)
        for t in tris:
            parts = []
            for idx in t:
                a = idx + 1
                if has_t and has_n:
                    parts.append(f'{a}/{a}/{a}')
                elif has_t:
                    parts.append(f'{a}/{a}')
                elif has_n:
                    parts.append(f'{a}//{a}')
                else:
                    parts.append(str(a))
            f.write('f ' + ' '.join(parts) + '\n')


def main():
    limit = None
    if '--limit' in sys.argv:
        limit = int(sys.argv[sys.argv.index('--limit') + 1])
    for d in (OUT, os.path.dirname(LOG)):
        os.makedirs(d, exist_ok=True)
    files = sorted(glob.glob(SRC + '/*.mesh'))
    if limit:
        files = files[:limit]
    log = open(LOG, 'w')
    stats = {'ok': 0, 'points': 0, 'skip': 0, 'fail': 0}
    for i, p in enumerate(files, 1):
        base = os.path.splitext(os.path.basename(p))[0]
        d = open(p, 'rb').read()
        flags = struct.unpack('<I', d[0x48:0x4c])[0]
        try:
            if flags in (0, 0x100):
                verts, normals, uvs, tris, aabb = parse_compressed(d)
            elif flags == 1:
                verts, normals, uvs, tris, aabb = parse_zippos(d)
            else:
                log.write(f'SKIP  flags={flags:#x}  {base}\n')
                stats['skip'] += 1
                continue
            write_obj(os.path.join(OUT, base + '.obj'), base, verts, normals, uvs, tris)
            if tris:
                stats['ok'] += 1
            else:
                stats['points'] += 1
                log.write(f'POINTS  flags={flags:#x}  {base}  v={len(verts)}\n')
        except Exception as e:
            stats['fail'] += 1
            log.write(f'FAIL  flags={flags:#x}  {base}: {e}\n')
        if i % 500 == 0:
            print(f'{i}/{len(files)} ok={stats["ok"]} points={stats["points"]} '
                  f'skip={stats["skip"]} fail={stats["fail"]}', flush=True)
    log.write(f'SUMMARY {stats}\n')
    log.close()
    print(f'DONE {stats} -> {OUT}', flush=True)


if __name__ == '__main__':
    main()
