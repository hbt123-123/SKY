#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _137_139
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
} _139;

layout(set = 0, binding = 0, std140) uniform _214_216
{
    float _m0;
    float _m1;
} _216;

layout(set = 0, binding = 1, std140) uniform _392_394
{
    vec4 _m0;
    vec2 _m1;
} _394;

layout(set = 0, binding = 4) uniform mediump sampler2D _258;
layout(set = 0, binding = 3) uniform mediump sampler2D _276;

layout(location = 1) in vec4 _203;
layout(location = 0) in vec3 _230;
layout(location = 0) out vec4 _435;
layout(location = 1) out vec4 _446;

void main()
{
    bool _201 = _203.w >= 0.5;
    float _209 = 0.0;
    float _210 = 1.0;
    float _222 = _203.z * _216._m1;
    vec3 _228 = _230;
    vec3 _233 = _228.zxy;
    _233 = fract(_233 * 443.897491455078125);
    _233 += vec3(dot(_233, _233.yzx + vec3(19.1900005340576171875)));
    float _466 = fract((_233.x + _233.y) * _233.z);
    float _232 = _466;
    vec3 _237 = _139._m17 - _228;
    float _243 = length(_237);
    float _255 = _243 * 0.00999999977648258209228515625;
    float _489 = min(_255, 1.0);
    float _251 = _489;
    vec3 _259 = _228;
    float _261 = 1.0;
    float _493 = 0.039999999105930328369140625 * _261;
    float _494 = 0.02500000037252902984619140625 * _261;
    vec2 _495 = fract((_259.xz * _493) + _139._m68.xz);
    vec2 _496 = fract((_259.xz * _494) + _139._m69.xz);
    vec2 _498 = textureLod(_258, _496, 1.0).xy;
    vec2 _551 = (_498 * 2.0) - vec2(1.0);
    vec2 _497 = _551;
    vec4 _499 = textureLod(_258, _495, 1.0);
    vec4 _534 = _499;
    vec2 _541 = ((_534.xy - vec2(0.5)) * _497) + vec2(0.5);
    _499.x = _541.x;
    _499.y = _541.y;
    vec2 _501 = _499.xy;
    vec2 _557 = (_501 * 2.0) - vec2(1.0);
    vec2 _500 = -_557;
    vec2 _502 = _500;
    vec2 _257 = _502;
    vec2 _263 = (_228.xz - _139._m64.xy) * _139._m64.w;
    vec4 _275 = textureLod(_276, _263, 0.0);
    float _281 = _275.w;
    float _563 = clamp(_281, 0.0, 1.0);
    float _289 = (_563 * 8.0) - 4.0;
    float _567 = max(_289, 0.0);
    float _280 = _567;
    vec2 _291 = (_275.xy * 2.0) * _280;
    bool _297 = true;
    if (_297)
    {
        vec3 _304 = _228;
        vec2 _306 = _304.xz - (_291 * 1.0);
        _228.x = _306.x;
        _228.z = _306.y;
        vec3 _316 = _228;
        vec2 _318 = _316.xz + (_257 * mix(0.0500000007450580596923828125, 1.0, _251));
        _228.x = _318.x;
        _228.z = _318.y;
    }
    else
    {
        _257 = vec2(0.0);
    }
    if (_201)
    {
        vec3 _328 = -vec3(_139._m6[0].x, _139._m6[1].x, _139._m6[2].x);
        vec2 _339 = _257 - (_291 * 5.0);
        vec3 _345 = normalize(vec3(_339.x, -0.5, _339.y));
        _209 = dot(_328, _345);
        float _356 = 0.4000000059604644775390625;
        _209 = clamp(_209, -_356, _356);
    }
    float _363 = 0.0;
    vec3 _364 = vec3(0.0);
    _210 *= 0.20000000298023223876953125;
    _228.y += (_222 * 0.5);
    vec4 _383 = vec4(_228, 1.0);
    vec4 _384 = _139._m8 * _383;
    gl_Position = _384;
    float _387 = ((0.5 * _139._m18) * _394._m0.y) * pow(gl_Position.w, -0.75);
    _387 *= _222;
    vec4 _423;
    if (_201)
    {
        float _416 = length(_228 - _139._m17);
        float _417 = 10.0;
        float _418 = 20.0;
        float _571 = (_416 - _417) / (_418 - _417);
        float _582 = clamp(_571, 0.0, 1.0);
        float _572 = _582;
        _363 *= (1.0 + _572);
        _423 = vec4(0.5, _232, _209, _363);
    }
    else
    {
        _423 = vec4(0.0, _232, 0.0, 0.0);
    }
    float _433 = max(_387, 1.0);
    gl_PointSize = _433;
    _435 = vec4(f16vec4(f16vec3(_364), float16_t(_210)));
    vec4 _447 = _423;
    f16vec4 _590 = f16vec4(_447);
    _446 = vec4(_590);
}

