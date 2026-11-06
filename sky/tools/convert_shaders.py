#!/usr/bin/env python3
"""Convert every Sky SPIR-V shader to Vulkan-flavored GLSL with spirv-cross."""
import os, subprocess, sys

SRC = '/workspace/sky/apk/assets/Data/Shaders'
OUT = '/workspace/sky/assets/shaders'
LOG = '/workspace/sky/reports/shaders.log'


def main():
    ok = fail = 0
    log = open(LOG, 'w')
    files = []
    for root, _, fs in os.walk(SRC):
        for f in fs:
            if f.endswith('.spv'):
                files.append(os.path.join(root, f))
    for p in files:
        rel = os.path.relpath(p, SRC)
        dst = os.path.join(OUT, rel[:-4] + '.glsl')
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        r = subprocess.run(['spirv-cross', p, '--vulkan-semantics', '--output', dst],
                           capture_output=True, text=True)
        if r.returncode == 0:
            ok += 1
        else:
            fail += 1
            log.write(f'FAIL {rel}: {r.stderr.strip()[:200]}\n')
    log.write(f'SUMMARY ok={ok} fail={fail}\n')
    log.close()
    print(f'shaders ok={ok} fail={fail}', flush=True)


if __name__ == '__main__':
    main()
