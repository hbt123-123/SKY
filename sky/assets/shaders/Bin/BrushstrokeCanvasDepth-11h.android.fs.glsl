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
layout(set = 1, binding = 9) uniform mediump sampler2D _1236;
layout(set = 1, binding = 6) uniform mediump sampler2D _1250;

layout(location = 7) flat in vec2 _1158;
layout(location = 6) in vec2 _1166;
layout(location = 3) flat in f16vec4 _1233;
layout(location = 8) flat in vec2 _1238;
layout(location = 0) out vec4 _1275;

void main()
{
    float _1156 = _1158.x;
    float _1162 = _1158.y;
    vec2 _1165 = _1166;
    vec2 _1168 = step(vec2(0.5), vec2(_1156, fract(_1156 * 2.0)));
    vec2 _1176 = mix(_1165, vec2(1.0) - _1165, _1168);
    float _1193 = _1156;
    int _1195 = textureSize(_1188, 0).z;
    int _1880 = int(floor(_1193 * float(_1195)));
    vec3 _1183 = vec3(_1176, float(_1880));
    float _1202 = pow(1.0 - _1162, 3.0);
    float _1206 = mix(1.0, 6.0, _1202);
    _1183.y = mix(_1168.y, _1183.y, _1206);
    float _1217 = float(f16vec4(texture(_1218, _1183)).x);
    if (_1217 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1231 = vec4(_1233);
    _1231 = vec4(f16vec4(texture(_1236, _1238)));
    float _1243 = 0.0;
    bool _1244 = _1162 < 1.0;
    if (_1244)
    {
        _1243 = texture(_1250, _1165 * _1085._m4).x * 0.20000000298023223876953125;
    }
    if (_1162 < 1.0)
    {
        vec4 _1265 = _1231;
        vec2 _1267 = _1165;
        float _1269 = _1162;
        float _1271 = _1243;
        vec4 _1888 = vec4(_1085._m1, 0.0);
        float _1889 = (1.0 - _1269) * (1.2000000476837158203125 + _1085._m3);
        vec4 _1890 = vec4(_1085._m1 * (1.0 + (_1085._m2 * 7.0)), _1265.w);
        vec2 _1892 = _1267;
        float _1893 = _1085._m3;
        float _1894 = _1889;
        float _1895 = _1271;
        float _1948 = 1.0 - _1892.y;
        _1948 = 0.100000001490116119384765625 + (_1948 * 0.800000011920928955078125);
        float _1950 = _1894 - _1948;
        float _1982 = clamp(_1950, 0.0, 1.0);
        float _1951 = _1893;
        float _1952 = _1982;
        float _1953 = _1895;
        float _1986 = ((1.0 + _1951) * _1952) - _1953;
        float _1998 = clamp(_1986, 0.0, 1.0);
        float _1987 = smoothstep(0.0, _1951, _1998);
        float _1949 = _1987;
        float _1954 = pow(1.0 - (2.0 * abs(_1949 - 0.5)), 0.4000000059604644775390625 / max(_1893, 0.001000000047497451305389404296875));
        vec2 _1955 = vec2(_1949, _1954);
        vec2 _1891 = _1955;
        _1265 = mix(_1265, _1888, vec4(_1891.x));
        _1265 = mix(_1265, _1890, vec4(_1891.y));
        if (_1265.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1896 = _1265;
        _1231 = _1896;
    }
    _1275 = vec4(0.0);
}

