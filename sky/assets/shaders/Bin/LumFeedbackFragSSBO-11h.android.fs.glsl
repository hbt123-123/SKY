#version 450

layout(set = 1, binding = 4, std430) restrict buffer _10_12
{
    float _m0;
    float _m1[3];
} _12;

layout(location = 0) flat in float _16;
layout(location = 0) out vec4 _22;

void main()
{
    _12._m0 = _16;
    _22 = vec4(1.0);
}

