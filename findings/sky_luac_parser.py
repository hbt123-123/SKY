#!/usr/bin/env python3
"""Sky: Children of the Light (.luac) structural parser — VALIDATED 19/19 files to exact EOF.

Sky's Lua bytecode = Lua 5.2 dump with these TGC modifications:
  1. 6-byte LUAC_DATA-style marker appended after the standard 12-byte header:
     19 93 0D 0A 1A 0A
  2. String length is a 4-byte int (not size_t); the length counts the trailing
     NUL and the NUL byte IS written (stock 5.2 writes len-1 bytes without NUL).
  3. Function header has NO source field: [linedef u32][lastlinedef u32][np u8]
     [is_vararg u8][maxstack u8]; the source string appears in the DEBUG section
     (before lineinfo), NUL-terminated like all strings.
  4. Section order per function: code, constants, protos, upvalues(2B desc each),
     debug(source, lineinfo u32 each, locvars, upvalue names).
  5. Opcode numbering is customized by TGC (CALL=29/RETURN=31 remain at stock
     slots; GETTABUP appears to be at 12, SETTABLE at 16 — full map requires
     empirical recovery; see SKY_RESEARCH_NOTES.md).

Usage: python3 sky_luac_parser.py <file.luac> [--verbose]
"""
import struct, sys

def parse(path, verbose=False):
    d = open(path, 'rb').read()
    assert d[:4] == b'\x1bLua', "not a Lua chunk"
    ver, fmt = d[4], d[5]
    assert ver == 0x52 and d[12:18] == b'\x19\x93\r\n\x1a\n', "not Sky's tweaked 5.2 header"
    st = {'o': 18}
    def u32():
        v, = struct.unpack('<I', d[st['o']:st['o']+4]); st['o'] += 4; return v
    def u8():
        v = d[st['o']]; st['o'] += 1; return v
    def string():
        ln = u32()
        if ln == 0: return None
        s = d[st['o']:st['o']+ln]; st['o'] += ln     # includes trailing NUL
        return s[:-1].decode('latin1')
    stats = {'fns': 0, 'instrs': 0, 'consts': 0}
    def fn(depth=0):
        stats['fns'] += 1
        ld = u32(); lld = u32(); np = u8(); iv = u8(); ms = u8()
        n = u32(); st['o'] += 4*n; stats['instrs'] += n
        code = d[st['o']-4*n:st['o']]
        for _ in range(u32()):
            t = u8()
            if t == 0: pass
            elif t == 1: u8()
            elif t == 3: st['o'] += 8
            elif t == 4: string()
            else: raise ValueError(f"const type {t:#x} at {hex(st['o'])}")
            stats['consts'] += 1
        for _ in range(u32()): fn(depth+1)
        nup = u32()
        for _ in range(nup): u8(); u8()
        src = string()
        nli = u32(); st['o'] += 4*nli
        nlv = u32()
        for _ in range(nlv): string(); u32(); u32()
        nun = u32()
        for _ in range(nun): string()
        if verbose:
            print(f"{'  '*depth}fn src={src!r} lines={ld}-{lld} params={np} vararg={iv} stack={ms} code={n} upvals={nup}")
        return code
    fn()
    rem = len(d) - st['o']
    if rem: raise ValueError(f"{rem} unparsed trailing bytes")
    print(f"OK {path}: functions={stats['fns']} instrs={stats['instrs']} consts={stats['consts']} (exact EOF)")
    return stats

if __name__ == '__main__':
    for p in sys.argv[1:]:
        parse(p, verbose='--verbose' in sys.argv)
