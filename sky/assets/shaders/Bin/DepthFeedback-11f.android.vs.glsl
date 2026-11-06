#version 450

layout(set = 0, binding = 0, std140) uniform _10_12
{
    vec2 _m0;
    float _m1;
} _12;

layout(set = 0, binding = 4, std430) restrict buffer _84_86
{
    float _m0;
    float _m1[3];
} _86;

layout(set = 0, binding = 1) uniform mediump sampler2D _66;

void main()
{
    float _8 = _12._m1 / 8.0;
    float _20 = 0.0;
    vec2 _23 = _12._m0 - (vec2(4.0) * _8);
    for (int _34 = 0; _34 < 8; _34++)
    {
        for (int _44 = 0; _44 < 8; _44++)
        {
            vec2 _52 = fract(_23 + (vec2(float(_34), float(_44)) * _8));
            _20 += textureLod(_66, _52, 0.0).w;
        }
    }
    _20 *= 15.625;
    _86._m0 = _20;
}

