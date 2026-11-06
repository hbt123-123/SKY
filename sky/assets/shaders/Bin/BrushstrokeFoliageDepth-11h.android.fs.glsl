#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 2, std140) uniform _264_266
{
    vec4 _m0;
    vec4 _m1;
    vec4 _m2;
    vec4 _m3;
    vec4 _m4;
    vec4 _m5;
    mat4 _m6;
    mat4 _m7;
    mat4 _m8;
    mat4 _m9;
    mat4 _m10;
    mat4 _m11;
    mat4 _m12;
    vec4 _m13;
    vec4 _m14;
    vec4 _m15;
    vec4 _m16;
    vec3 _m17;
    float _m18;
    float _m19;
    float _m20;
    float _m21;
    float _m22;
    float _m23;
    float _m24;
    float _m25;
    uint _m26;
    vec4 _m27;
    vec3 _m28;
    float _m29;
    vec3 _m30;
    float _m31;
    vec4 _m32;
    vec4 _m33;
    vec3 _m34;
    vec3 _m35;
    vec3 _m36;
    vec3 _m37;
    vec3 _m38;
    vec3 _m39;
    vec4 _m40;
    vec2 _m41;
    vec2 _m42;
    float _m43;
    vec3 _m44;
    float _m45;
    vec4 _m46;
    vec3 _m47;
    float _m48;
    vec3 _m49;
    float _m50;
    vec3 _m51;
    float _m52;
    vec3 _m53;
    vec3 _m54;
    vec4 _m55;
    vec4 _m56;
    float _m57;
    float _m58;
    float _m59;
    vec4 _m60;
    vec3 _m61;
    float _m62;
    vec4 _m63;
    vec4 _m64;
    vec4 _m65;
    vec4 _m66;
    vec3 _m67;
    vec3 _m68;
    vec3 _m69;
    vec3 _m70;
    vec4 _m71;
    vec4 _m72;
    vec4 _m73;
    vec4 _m74;
    vec4 _m75;
    vec4 _m76;
    vec3 _m77;
    vec3 _m78;
    vec4 _m79;
    vec4 _m80;
    vec4 _m81;
    vec4 _m82;
    vec3 _m83;
    vec3 _m84;
    vec3 _m85;
    float _m86;
    vec3 _m87;
    float _m88;
    vec3 _m89;
    vec3 _m90;
    float _m91;
    vec3 _m92;
    vec3 _m93;
    vec3 _m94;
    vec3 _m95;
    float _m96;
    vec4 _m97;
    uvec4 _m98;
} _266;

layout(set = 1, binding = 1, std140) uniform _299_301
{
    vec4 _m0;
    vec2 _m1;
} _301;

layout(set = 1, binding = 0, std140) uniform _1161_1163
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
    float _m21;
} _1163;

layout(set = 1, binding = 7) uniform mediump sampler2DArray _1272;
layout(set = 1, binding = 8) uniform mediump sampler2DArray _1302;
layout(set = 1, binding = 6) uniform mediump sampler2D _1327;

layout(location = 0) in vec3 _1234;
layout(location = 7) flat in vec2 _1242;
layout(location = 6) in vec2 _1250;
layout(location = 3) flat in f16vec4 _1317;
layout(location = 0) out vec4 _1352;

void main()
{
    vec3 _1236 = _1234;
    vec2 _1238 = vec2(0.5, 1.0);
    float _1973 = distance(_1236, _266._m17);
    float _1974 = max(0.100000001490116119384765625, _1238.x);
    float _1975 = max(0.100000001490116119384765625, _1238.y);
    float _1977 = (_1973 - _1974) / (_1975 - _1974);
    float _2017 = clamp(_1977, 0.0, 1.0);
    float _1976 = _2017;
    vec2 _1978 = gl_FragCoord.xy;
    vec2 _1979 = _1978;
    vec2 _1980 = _301._m0.xy * _266._m32.zw;
    vec2 _2021 = (fract(_1979 * 0.015625) * 64.0) + _1980;
    float _2022 = dot(vec3(_2021, 1.0), vec3(0.515625, 0.8125, 0.390625));
    float _2023 = fract(_2022);
    if ((_1976 - _2023) <= 0.0)
    {
        discard;
    }
    float _1240 = _1242.x;
    float _1246 = _1242.y;
    vec2 _1249 = _1250;
    vec2 _1252 = step(vec2(0.5), vec2(_1240, fract(_1240 * 2.0)));
    vec2 _1260 = mix(_1249, vec2(1.0) - _1249, _1252);
    float _1277 = _1240;
    int _1279 = textureSize(_1272, 0).z;
    int _2038 = int(floor(_1277 * float(_1279)));
    vec3 _1267 = vec3(_1260, float(_2038));
    float _1286 = pow(1.0 - _1246, 3.0);
    float _1290 = mix(1.0, 6.0, _1286);
    _1267.y = mix(_1252.y, _1267.y, _1290);
    float _1301 = float(f16vec4(texture(_1302, _1267)).x);
    if (_1301 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1315 = vec4(_1317);
    float _1320 = 0.0;
    bool _1321 = _1246 < 1.0;
    if (_1321)
    {
        _1320 = texture(_1327, _1249 * _1163._m4).x * 0.20000000298023223876953125;
    }
    if (_1246 < 1.0)
    {
        vec4 _1342 = _1315;
        vec2 _1344 = _1249;
        float _1346 = _1246;
        float _1348 = _1320;
        vec4 _2046 = vec4(_1163._m1, 0.0);
        float _2047 = (1.0 - _1346) * (1.2000000476837158203125 + _1163._m3);
        vec4 _2048 = vec4(_1163._m1 * (1.0 + (_1163._m2 * 7.0)), _1342.w);
        vec2 _2050 = _1344;
        float _2051 = _1163._m3;
        float _2052 = _2047;
        float _2053 = _1348;
        float _2106 = 1.0 - _2050.y;
        _2106 = 0.100000001490116119384765625 + (_2106 * 0.800000011920928955078125);
        float _2108 = _2052 - _2106;
        float _2140 = clamp(_2108, 0.0, 1.0);
        float _2109 = _2051;
        float _2110 = _2140;
        float _2111 = _2053;
        float _2144 = ((1.0 + _2109) * _2110) - _2111;
        float _2156 = clamp(_2144, 0.0, 1.0);
        float _2145 = smoothstep(0.0, _2109, _2156);
        float _2107 = _2145;
        float _2112 = pow(1.0 - (2.0 * abs(_2107 - 0.5)), 0.4000000059604644775390625 / max(_2051, 0.001000000047497451305389404296875));
        vec2 _2113 = vec2(_2107, _2112);
        vec2 _2049 = _2113;
        _1342 = mix(_1342, _2046, vec4(_2049.x));
        _1342 = mix(_1342, _2048, vec4(_2049.y));
        if (_1342.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _2054 = _1342;
        _1315 = _2054;
    }
    _1352 = vec4(0.0);
}

