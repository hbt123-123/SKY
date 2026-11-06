#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _23_25
{
    vec2 _m0;
    float _m1;
} _25;

layout(set = 0, binding = 1) uniform mediump sampler2D _77;

layout(location = 0) flat out float _93;

void main()
{
    float _21 = _25._m1 / 8.0;
    float _31 = 0.0;
    vec2 _34 = _25._m0 - (vec2(4.0) * _21);
    for (int _45 = 0; _45 < 8; _45++)
    {
        for (int _55 = 0; _55 < 8; _55++)
        {
            vec2 _63 = fract(_34 + (vec2(float(_45), float(_55)) * _21));
            _31 += textureLod(_77, _63, 0.0).w;
        }
    }
    _31 *= 15.625;
    _93 = _31;
    gl_Position = vec4(1.0);
    float _99 = 1.0;
    gl_PointSize = _99;
}

