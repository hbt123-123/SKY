#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _57;

layout(location = 4) in vec4 _16;
layout(location = 8) in vec3 _39;
layout(location = 0) in vec4 _50;
layout(location = 6) in vec3 _67;
layout(location = 5) in vec3 _77;
layout(location = 7) in vec3 _89;
layout(location = 2) in vec4 _101;
layout(location = 0) out vec4 _122;

void main()
{
    vec4 _9 = vec4(0.0, 0.0, 0.0, 1.0);
    float _30 = _16.w;
    bool _36 = _39.y < 0.5;
    float _44 = _39.z;
    vec2 _49 = _50.zw;
    float _53 = 0.5 + (0.5 * texture(_57, _49).x);
    _53 = _36 ? 1.0 : _53;
    vec3 _70 = _67 * _53;
    _9.x = _70.x;
    _9.y = _70.y;
    _9.z = _70.z;
    vec4 _79 = _9;
    vec3 _81 = _79.xyz + _77;
    _9.x = _81.x;
    _9.y = _81.y;
    _9.z = _81.z;
    vec4 _92 = _9;
    vec3 _94 = _92.xyz + (_89 * 0.20000000298023223876953125);
    _9.x = _94.x;
    _9.y = _94.y;
    _9.z = _94.z;
    _9 *= _101;
    _9 *= _30;
    vec4 _112 = _9;
    vec3 _114 = _112.xyz + (_101.xyz * _44);
    _9.x = _114.x;
    _9.y = _114.y;
    _9.z = _114.z;
    _122 = vec4(_9.xyz, 0.0);
}

