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
layout(set = 1, binding = 6) uniform mediump sampler2D _1243;

layout(location = 7) flat in vec2 _1158;
layout(location = 6) in vec2 _1166;
layout(location = 3) flat in f16vec4 _1233;
layout(location = 0) out vec4 _1268;

void main()
{
    float _1156 = _1158.x;
    float _1162 = _1158.y;
    vec2 _1165 = _1166;
    vec2 _1168 = step(vec2(0.5), vec2(_1156, fract(_1156 * 2.0)));
    vec2 _1176 = mix(_1165, vec2(1.0) - _1165, _1168);
    float _1193 = _1156;
    int _1195 = textureSize(_1188, 0).z;
    int _1873 = int(floor(_1193 * float(_1195)));
    vec3 _1183 = vec3(_1176, float(_1873));
    float _1202 = pow(1.0 - _1162, 3.0);
    float _1206 = mix(1.0, 6.0, _1202);
    _1183.y = mix(_1168.y, _1183.y, _1206);
    float _1217 = float(f16vec4(texture(_1218, _1183)).x);
    if (_1217 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1231 = vec4(_1233);
    float _1236 = 0.0;
    bool _1237 = _1162 < 1.0;
    if (_1237)
    {
        _1236 = texture(_1243, _1165 * _1085._m4).x * 0.20000000298023223876953125;
    }
    if (_1162 < 1.0)
    {
        vec4 _1258 = _1231;
        vec2 _1260 = _1165;
        float _1262 = _1162;
        float _1264 = _1236;
        vec4 _1881 = vec4(_1085._m1, 0.0);
        float _1882 = (1.0 - _1262) * (1.2000000476837158203125 + _1085._m3);
        vec4 _1883 = vec4(_1085._m1 * (1.0 + (_1085._m2 * 7.0)), _1258.w);
        vec2 _1885 = _1260;
        float _1886 = _1085._m3;
        float _1887 = _1882;
        float _1888 = _1264;
        float _1941 = 1.0 - _1885.y;
        _1941 = 0.100000001490116119384765625 + (_1941 * 0.800000011920928955078125);
        float _1943 = _1887 - _1941;
        float _1975 = clamp(_1943, 0.0, 1.0);
        float _1944 = _1886;
        float _1945 = _1975;
        float _1946 = _1888;
        float _1979 = ((1.0 + _1944) * _1945) - _1946;
        float _1991 = clamp(_1979, 0.0, 1.0);
        float _1980 = smoothstep(0.0, _1944, _1991);
        float _1942 = _1980;
        float _1947 = pow(1.0 - (2.0 * abs(_1942 - 0.5)), 0.4000000059604644775390625 / max(_1886, 0.001000000047497451305389404296875));
        vec2 _1948 = vec2(_1942, _1947);
        vec2 _1884 = _1948;
        _1258 = mix(_1258, _1881, vec4(_1884.x));
        _1258 = mix(_1258, _1883, vec4(_1884.y));
        if (_1258.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1889 = _1258;
        _1231 = _1889;
    }
    _1268 = vec4(0.0);
}

