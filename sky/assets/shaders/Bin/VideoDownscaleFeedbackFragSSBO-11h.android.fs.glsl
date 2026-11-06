#version 450

layout(set = 1, binding = 1, std430) restrict buffer _8_10
{
    vec4 _m0;
    vec4 _m1;
} _10;

layout(location = 0) flat in vec4 _14;
layout(location = 1) flat in vec4 _19;
layout(location = 0) out vec4 _23;

void main()
{
    _10._m0 = _14;
    _10._m1 = _19;
    _23 = _14;
}

