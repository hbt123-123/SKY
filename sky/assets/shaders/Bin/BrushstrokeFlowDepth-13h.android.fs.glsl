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

layout(set = 1, binding = 7) uniform mediump sampler2DArray _1262;
layout(set = 1, binding = 8) uniform mediump sampler2DArray _1292;
layout(set = 1, binding = 6) uniform mediump sampler2D _1321;

layout(location = 7) flat in vec2 _1221;
layout(location = 8) flat in f16vec2 _1230;
layout(location = 6) in vec2 _1240;
layout(location = 3) flat in f16vec4 _1307;
layout(location = 0) out vec4 _1346;

void main()
{
    float _1219 = _1221.x;
    float _1225 = _1221.y;
    float _1228 = float(_1230.x);
    vec2 _1239 = _1240;
    vec2 _1242 = step(vec2(0.5), vec2(_1219, fract(_1219 * 2.0)));
    vec2 _1250 = mix(_1239, vec2(1.0) - _1239, _1242);
    float _1267 = _1219;
    int _1269 = textureSize(_1262, 0).z;
    int _1969 = int(floor(_1267 * float(_1269)));
    vec3 _1257 = vec3(_1250, float(_1969));
    float _1276 = pow(1.0 - _1225, 3.0);
    float _1280 = mix(1.0, 6.0, _1276);
    _1257.y = mix(_1242.y, _1257.y, _1280);
    float _1291 = float(f16vec4(texture(_1292, _1257)).x);
    if (_1291 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1305 = vec4(_1307);
    float _1310 = 0.0;
    bool _1311 = _1225 < 1.0;
    _1311 = _1311 || (_1228 >= 0.0);
    if (_1311)
    {
        _1310 = texture(_1321, _1239 * _1092._m4).x * 0.20000000298023223876953125;
    }
    if (_1225 < 1.0)
    {
        vec4 _1336 = _1305;
        vec2 _1338 = _1239;
        float _1340 = _1225;
        float _1342 = _1310;
        vec4 _1977 = vec4(_1092._m1, 0.0);
        float _1978 = (1.0 - _1340) * (1.2000000476837158203125 + _1092._m3);
        vec4 _1979 = vec4(_1092._m1 * (1.0 + (_1092._m2 * 7.0)), _1336.w);
        vec2 _1981 = _1338;
        float _1982 = _1092._m3;
        float _1983 = _1978;
        float _1984 = _1342;
        float _2037 = 1.0 - _1981.y;
        _2037 = 0.100000001490116119384765625 + (_2037 * 0.800000011920928955078125);
        float _2039 = _1983 - _2037;
        float _2071 = clamp(_2039, 0.0, 1.0);
        float _2040 = _1982;
        float _2041 = _2071;
        float _2042 = _1984;
        float _2075 = ((1.0 + _2040) * _2041) - _2042;
        float _2087 = clamp(_2075, 0.0, 1.0);
        float _2076 = smoothstep(0.0, _2040, _2087);
        float _2038 = _2076;
        float _2043 = pow(1.0 - (2.0 * abs(_2038 - 0.5)), 0.4000000059604644775390625 / max(_1982, 0.001000000047497451305389404296875));
        vec2 _2044 = vec2(_2038, _2043);
        vec2 _1980 = _2044;
        _1336 = mix(_1336, _1977, vec4(_1980.x));
        _1336 = mix(_1336, _1979, vec4(_1980.y));
        if (_1336.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1985 = _1336;
        _1305 = _1985;
    }
    _1346 = vec4(0.0);
}

