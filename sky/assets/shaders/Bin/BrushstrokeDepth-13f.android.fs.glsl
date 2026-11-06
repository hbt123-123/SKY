#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0, std140) uniform _1083_1085
{
    vec3 _m0;
    vec3 _m1;
    float _m2;
    float _m3;
    vec2 _m4;
    float _m5;
    float _m6;
    float _m7;
    vec3 _m8;
    float _m9;
    float _m10;
    float _m11;
    float _m12;
    float _m13;
    vec2 _m14;
    float _m15;
    float _m16;
    float _m17;
    uint _m18;
    vec3 _m19;
    float _m20;
} _1085;

layout(set = 1, binding = 7) uniform mediump sampler2DArray _1188;
layout(set = 1, binding = 8) uniform mediump sampler2DArray _1218;
layout(set = 1, binding = 6) uniform mediump sampler2D _1246;

layout(location = 7) flat in vec2 _1158;
layout(location = 6) in vec2 _1166;
layout(location = 3) flat in vec4 _1232;
layout(location = 0) out vec4 _1271;

void main()
{
    float _1156 = _1158.x;
    float _1162 = _1158.y;
    vec2 _1165 = _1166;
    vec2 _1168 = step(vec2(0.5), vec2(_1156, fract(_1156 * 2.0)));
    vec2 _1176 = mix(_1165, vec2(1.0) - _1165, _1168);
    float _1193 = _1156;
    int _1195 = textureSize(_1188, 0).z;
    int _1887 = int(floor(_1193 * float(_1195)));
    vec3 _1183 = vec3(_1176, float(_1887));
    float _1202 = pow(1.0 - _1162, 3.0);
    float _1206 = mix(1.0, 6.0, _1202);
    _1183.y = mix(_1168.y, _1183.y, _1206);
    float _1217 = float(f16vec4(texture(_1218, _1183)).x);
    if (_1217 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1231 = vec4(_1232);
    float _1239 = 0.0;
    bool _1240 = _1162 < 1.0;
    if (_1240)
    {
        _1239 = texture(_1246, _1165 * _1085._m4).x * 0.20000000298023223876953125;
    }
    if (_1162 < 1.0)
    {
        vec4 _1261 = _1231;
        vec2 _1263 = _1165;
        float _1265 = _1162;
        float _1267 = _1239;
        vec4 _1895 = vec4(_1085._m1, 0.0);
        float _1896 = (1.0 - _1265) * (1.2000000476837158203125 + _1085._m3);
        vec4 _1897 = vec4(_1085._m1 * (1.0 + (_1085._m2 * 7.0)), _1261.w);
        vec2 _1899 = _1263;
        float _1900 = _1085._m3;
        float _1901 = _1896;
        float _1902 = _1267;
        float _1955 = 1.0 - _1899.y;
        _1955 = 0.100000001490116119384765625 + (_1955 * 0.800000011920928955078125);
        float _1957 = _1901 - _1955;
        float _1989 = clamp(_1957, 0.0, 1.0);
        float _1958 = _1900;
        float _1959 = _1989;
        float _1960 = _1902;
        float _1993 = ((1.0 + _1958) * _1959) - _1960;
        float _2005 = clamp(_1993, 0.0, 1.0);
        float _1994 = smoothstep(0.0, _1958, _2005);
        float _1956 = _1994;
        float _1961 = pow(1.0 - (2.0 * abs(_1956 - 0.5)), 0.4000000059604644775390625 / max(_1900, 0.001000000047497451305389404296875));
        vec2 _1962 = vec2(_1956, _1961);
        vec2 _1898 = _1962;
        _1261 = mix(_1261, _1895, vec4(_1898.x));
        _1261 = mix(_1261, _1897, vec4(_1898.y));
        if (_1261.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1903 = _1261;
        _1231 = _1903;
    }
    _1271 = vec4(0.0);
}

