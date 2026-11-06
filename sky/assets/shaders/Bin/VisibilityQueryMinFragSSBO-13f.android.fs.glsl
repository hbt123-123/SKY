#version 450

layout(set = 1, binding = 4, std430) restrict buffer _8_10
{
    uint _m0[];
} _10;

layout(location = 0) flat in uint _14;
layout(location = 1) flat in uint _16;
layout(location = 0) out vec4 _23;

void main()
{
    _10._m0[_14] = _16;
    _23 = vec4(0.0);
}

