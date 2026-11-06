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
layout(set = 1, binding = 9) uniform mediump sampler2D _1239;
layout(set = 1, binding = 6) uniform mediump sampler2D _1253;

layout(location = 7) flat in vec2 _1158;
layout(location = 6) in vec2 _1166;
layout(location = 3) flat in vec4 _1232;
layout(location = 8) flat in vec2 _1241;
layout(location = 0) out vec4 _1278;

void main()
{
    float _1156 = _1158.x;
    float _1162 = _1158.y;
    vec2 _1165 = _1166;
    vec2 _1168 = step(vec2(0.5), vec2(_1156, fract(_1156 * 2.0)));
    vec2 _1176 = mix(_1165, vec2(1.0) - _1165, _1168);
    float _1193 = _1156;
    int _1195 = textureSize(_1188, 0).z;
    int _1894 = int(floor(_1193 * float(_1195)));
    vec3 _1183 = vec3(_1176, float(_1894));
    float _1202 = pow(1.0 - _1162, 3.0);
    float _1206 = mix(1.0, 6.0, _1202);
    _1183.y = mix(_1168.y, _1183.y, _1206);
    float _1217 = float(f16vec4(texture(_1218, _1183)).x);
    if (_1217 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1231 = vec4(_1232);
    _1231 = vec4(f16vec4(texture(_1239, _1241)));
    float _1246 = 0.0;
    bool _1247 = _1162 < 1.0;
    if (_1247)
    {
        _1246 = texture(_1253, _1165 * _1085._m4).x * 0.20000000298023223876953125;
    }
    if (_1162 < 1.0)
    {
        vec4 _1268 = _1231;
        vec2 _1270 = _1165;
        float _1272 = _1162;
        float _1274 = _1246;
        vec4 _1902 = vec4(_1085._m1, 0.0);
        float _1903 = (1.0 - _1272) * (1.2000000476837158203125 + _1085._m3);
        vec4 _1904 = vec4(_1085._m1 * (1.0 + (_1085._m2 * 7.0)), _1268.w);
        vec2 _1906 = _1270;
        float _1907 = _1085._m3;
        float _1908 = _1903;
        float _1909 = _1274;
        float _1962 = 1.0 - _1906.y;
        _1962 = 0.100000001490116119384765625 + (_1962 * 0.800000011920928955078125);
        float _1964 = _1908 - _1962;
        float _1996 = clamp(_1964, 0.0, 1.0);
        float _1965 = _1907;
        float _1966 = _1996;
        float _1967 = _1909;
        float _2000 = ((1.0 + _1965) * _1966) - _1967;
        float _2012 = clamp(_2000, 0.0, 1.0);
        float _2001 = smoothstep(0.0, _1965, _2012);
        float _1963 = _2001;
        float _1968 = pow(1.0 - (2.0 * abs(_1963 - 0.5)), 0.4000000059604644775390625 / max(_1907, 0.001000000047497451305389404296875));
        vec2 _1969 = vec2(_1963, _1968);
        vec2 _1905 = _1969;
        _1268 = mix(_1268, _1902, vec4(_1905.x));
        _1268 = mix(_1268, _1904, vec4(_1905.y));
        if (_1268.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1910 = _1268;
        _1231 = _1910;
    }
    _1278 = vec4(0.0);
}

