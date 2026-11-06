#!/usr/bin/env python3
"""Convert Sky (Android) KTX1 textures to PNG.

Formats seen in assets/Data/Images/Bin/ETC2:
  0x9270 R11_EAC, 0x9274/0x9275 ETC2 RGB(sRGB),
  0x9278/0x9279 ETC2 RGBA EAC(sRGB), 0x8C43 (ETC1-like), 0x8058 RGBA8.
"""
import os, struct, sys, glob
import texture2ddecoder as td
from PIL import Image

FMT = {
    0x9270: ('eacr', 8),
    0x9274: ('etc2', 8),
    0x9275: ('etc2', 8),
    0x9278: ('etc2a8', 16),
    0x9279: ('etc2a8', 16),
    0x8C43: ('raw', 4),  # GL_SRGB8_ALPHA8 (uncompressed)
    0x8D64: ('etc1', 8),
    0x8058: ('raw', 4),
}

def read_ktx_header(b):
    if b[:12] != b'\xabKTX 11\xbb\r\n\x1a\n':
        raise ValueError('not ktx1')
    (endian, glType, glTypeSize, glFormat, glInternalFormat,
     glBaseInternalFormat, w, h, depth, nArray, nFaces, nMip,
     kv) = struct.unpack_from('<13I', b, 12)
    data_off = 64 + kv
    return dict(w=w, h=h, fmt=glInternalFormat, nArray=nArray, nFaces=nFaces, nMip=nMip, off=data_off)

def decode(path):
    b = open(path, 'rb').read()
    hdr = read_ktx_header(b)
    w, h, fmt, off = hdr['w'], hdr['h'], hdr['fmt'], hdr['off']
    if fmt not in FMT:
        raise ValueError('unsupported format 0x%x' % fmt)
    kind, _ = FMT[fmt]
    if kind == 'raw':
        img = Image.frombytes('RGBA', (w, h), b[off:off + w * h * 4])
        return img
    img_size = struct.unpack_from('<I', b, off)[0]
    data = b[off + 4: off + 4 + img_size]
    if len(data) < img_size:
        raise ValueError('truncated texture data')
    if kind == 'etc2':
        out = td.decode_etc2(data, w, h)
    elif kind == 'etc2a8':
        out = td.decode_etc2a8(data, w, h)
    elif kind == 'etc1':
        out = td.decode_etc1(data, w, h)
    elif kind == 'eacr':
        out = td.decode_eacr(data, w, h)
    else:
        raise ValueError(kind)
    rgba = bytearray(len(out))
    rgba[0::4] = out[2::4]
    rgba[1::4] = out[1::4]
    rgba[2::4] = out[0::4]
    rgba[3::4] = out[3::4]
    if kind == 'eacr':  # single channel: replicate red, force alpha
        r = rgba[0::4]
        rgba[1::4] = r
        rgba[2::4] = r
        rgba[3::4] = b'\xff' * (w * h)
    return Image.frombytes('RGBA', (w, h), bytes(rgba))

def main():
    src_root, dst_root = sys.argv[1], sys.argv[2]
    files = sorted(glob.glob(os.path.join(src_root, '**', '*.ktx'), recursive=True))
    ok = fail = 0
    fails = []
    for i, f in enumerate(files, 1):
        rel = os.path.relpath(f, src_root)
        dst = os.path.join(dst_root, os.path.splitext(rel)[0] + '.png')
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        if os.path.exists(dst):
            ok += 1
            continue
        try:
            decode(f).save(dst, optimize=True)
            ok += 1
        except Exception as e:
            fail += 1
            fails.append('%s: %s' % (rel, e))
        if i % 100 == 0:
            print('progress %d/%d ok=%d fail=%d' % (i, len(files), ok, fail), flush=True)
    print('done ok=%d fail=%d' % (ok, fail))
    for x in fails[:20]:
        print('FAIL', x)

if __name__ == '__main__':
    main()
