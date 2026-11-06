#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0, std140) uniform _1090_1092
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
    vec3 _m21;
    float _m22;
    float _m23;
    vec3 _m24;
    float _m25;
    uint _m26;
} _1092;

layout(set = 1, binding = 7) uniform mediump sampler2DArray _1258;
layout(set = 1, binding = 8) uniform mediump sampler2DArray _1288;
layout(set = 1, binding = 6) uniform mediump sampler2D _1320;

layout(location = 7) flat in vec2 _1221;
layout(location = 8) flat in vec2 _1229;
layout(location = 6) in vec2 _1236;
layout(location = 3) flat in vec4 _1302;
layout(location = 0) out vec4 _1345;

void main()
{
    float _1219 = _1221.x;
    float _1225 = _1221.y;
    float _1228 = _1229.x;
    vec2 _1235 = _1236;
    vec2 _1238 = step(vec2(0.5), vec2(_1219, fract(_1219 * 2.0)));
    vec2 _1246 = mix(_1235, vec2(1.0) - _1235, _1238);
    float _1263 = _1219;
    int _1265 = textureSize(_1258, 0).z;
    int _1979 = int(floor(_1263 * float(_1265)));
    vec3 _1253 = vec3(_1246, float(_1979));
    float _1272 = pow(1.0 - _1225, 3.0);
    float _1276 = mix(1.0, 6.0, _1272);
    _1253.y = mix(_1238.y, _1253.y, _1276);
    float _1287 = float(f16vec4(texture(_1288, _1253)).x);
    if (_1287 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1301 = vec4(_1302);
    float _1309 = 0.0;
    bool _1310 = _1225 < 1.0;
    _1310 = _1310 || (_1228 >= 0.0);
    if (_1310)
    {
        _1309 = texture(_1320, _1235 * _1092._m4).x * 0.20000000298023223876953125;
    }
    if (_1225 < 1.0)
    {
        vec4 _1335 = _1301;
        vec2 _1337 = _1235;
        float _1339 = _1225;
        float _1341 = _1309;
        vec4 _1987 = vec4(_1092._m1, 0.0);
        float _1988 = (1.0 - _1339) * (1.2000000476837158203125 + _1092._m3);
        vec4 _1989 = vec4(_1092._m1 * (1.0 + (_1092._m2 * 7.0)), _1335.w);
        vec2 _1991 = _1337;
        float _1992 = _1092._m3;
        float _1993 = _1988;
        float _1994 = _1341;
        float _2047 = 1.0 - _1991.y;
        _2047 = 0.100000001490116119384765625 + (_2047 * 0.800000011920928955078125);
        float _2049 = _1993 - _2047;
        float _2081 = clamp(_2049, 0.0, 1.0);
        float _2050 = _1992;
        float _2051 = _2081;
        float _2052 = _1994;
        float _2085 = ((1.0 + _2050) * _2051) - _2052;
        float _2097 = clamp(_2085, 0.0, 1.0);
        float _2086 = smoothstep(0.0, _2050, _2097);
        float _2048 = _2086;
        float _2053 = pow(1.0 - (2.0 * abs(_2048 - 0.5)), 0.4000000059604644775390625 / max(_1992, 0.001000000047497451305389404296875));
        vec2 _2054 = vec2(_2048, _2053);
        vec2 _1990 = _2054;
        _1335 = mix(_1335, _1987, vec4(_1990.x));
        _1335 = mix(_1335, _1989, vec4(_1990.y));
        if (_1335.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1995 = _1335;
        _1301 = _1995;
    }
    _1345 = vec4(0.0);
}

