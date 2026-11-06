#version 450

layout(set = 1, binding = 3) uniform mediump sampler2D _82;
layout(set = 1, binding = 0) uniform mediump sampler2D _147;

layout(location = 4) in vec4 _41;
layout(location = 8) in vec3 _64;
layout(location = 0) in vec4 _75;
layout(location = 6) in vec3 _92;
layout(location = 5) in vec3 _102;
layout(location = 7) in vec3 _114;
layout(location = 2) in vec4 _126;
layout(location = 1) in vec2 _160;
layout(location = 0) out vec4 _174;
layout(location = 1) out vec4 _186;

void main()
{
    vec4 _36 = vec4(0.0, 0.0, 0.0, 1.0);
    float _39 = _41.x;
    float _55 = _41.w;
    bool _61 = _64.y < 0.5;
    float _69 = _64.z;
    vec2 _74 = _75.zw;
    float _78 = 0.5 + (0.5 * texture(_82, _74).x);
    _78 = _61 ? 1.0 : _78;
    vec3 _95 = _92 * _78;
    _36.x = _95.x;
    _36.y = _95.y;
    _36.z = _95.z;
    vec4 _104 = _36;
    vec3 _106 = _104.xyz + _102;
    _36.x = _106.x;
    _36.y = _106.y;
    _36.z = _106.z;
    vec4 _117 = _36;
    vec3 _119 = _117.xyz + (_114 * 0.20000000298023223876953125);
    _36.x = _119.x;
    _36.y = _119.y;
    _36.z = _119.z;
    _36 *= _126;
    _36 *= _55;
    vec4 _137 = _36;
    vec3 _139 = _137.xyz + (_126.xyz * _69);
    _36.x = _139.x;
    _36.y = _139.y;
    _36.z = _139.z;
    float _146 = texture(_147, _75.xy).w;
    if (_39 > 0.0)
    {
        float _157 = texture(_147, _160).w;
        _146 = mix(_146, _157, _39);
    }
    _36.w *= _146;
    _174 = vec4(_36.xyz * _36.w, _36.w);
    float _192 = 1.0 / gl_FragCoord.w;
    float _193 = 256.0;
    float _232 = log(_192 * 20.0) * (_193 * 0.079292468726634979248046875);
    float _242 = max(_232, 0.0);
    float _233 = _242;
    _186 = vec4(_233 * _36.w, _36.w * 1000.0, 0.0, _36.w);
}

