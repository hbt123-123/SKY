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

layout(set = 0, binding = 2, std140) uniform _105_107
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
} _107;

layout(set = 0, binding = 0, std140) uniform _339_341
{
    mat4 _m0;
    float _m1;
} _341;

layout(set = 0, binding = 3) uniform samplerCube _92;

layout(location = 0) in vec3 _313;
layout(location = 2) in vec3 _316;
layout(location = 1) in vec4 _320;
layout(location = 4) in vec4 _325;
layout(location = 0) out vec3 _353;
layout(location = 1) out vec4 _388;
layout(location = 3) out vec3 _392;
layout(location = 6) out vec3 _407;
layout(location = 7) out vec3 _415;
layout(location = 4) out vec4 _421;
layout(location = 3) in vec4 _422;
layout(location = 5) out vec4 _424;
layout(location = 2) out vec4 _426;

void main()
{
    vec3 _311 = _313;
    vec3 _315 = _316;
    vec3 _329 = _311;
    float _331 = _107._m20;
    float16_t _334 = float16_t(_320.w);
    float16_t _335 = float16_t(_325.w);
    float16_t _463 = float16_t(2.5);
    float16_t _464 = float16_t(smoothstep(0.0, 1.0, float(_335)));
    float16_t _465 = _334 * float16_t(6.28125);
    f16vec3 _466 = f16vec3(cos(_465), float16_t(0.0), -sin(_465));
    _466 = normalize(_466);
    f16vec3 _467 = ((_466 * float16_t((sin((_331 * 2.0) + (float(float16_t(1.0) - _464) * 3.0)) * 0.5) + 0.300000011920928955078125)) * _463) * _464;
    float16_t _468 = float16_t(2.5);
    float16_t _469 = float16_t(1.0);
    float16_t _470 = float16_t(0.2998046875);
    float16_t _471 = float16_t(1.0);
    float16_t _472 = float16_t(0.89990234375);
    float16_t _473 = float16_t(0.5);
    float16_t _474 = float16_t(1.0);
    float16_t _475 = float16_t(1.0);
    float16_t _476 = (_464 * float16_t(0.25)) + (float16_t(smoothstep(-3.0, 4.0, _329.y)) * float16_t(0.199951171875));
    float16_t _477 = float16_t(fract((_331 * float(_469)) - float(_476)));
    float16_t _478 = float16_t(1.0) - _472;
    float16_t _480;
    if (_477 < _478)
    {
        float16_t _479 = _477 / _478;
        _480 = float16_t(1.0) - float16_t(pow(float(_479), 0.75));
    }
    else
    {
        float16_t _481 = (_477 - _478) / _472;
        _480 = float16_t(smoothstep(0.0, 1.0, float(_481)));
    }
    float16_t _482 = (float16_t(1.0) - _480) * _470;
    float16_t _483 = _480 * _471;
    float16_t _484 = (_483 - _482) * _464;
    f16vec3 _485 = (_466 * _484) * _468;
    float16_t _486 = (_480 - float16_t(0.5)) * float16_t(2.0);
    float16_t _487 = (((-_486) * _473) * float16_t(smoothstep(-3.0, 4.0, _329.y))) * float16_t(0.5);
    _485.y += _487;
    float16_t _488 = _486 * _474;
    f16vec3 _489 = (f16vec3(normalize(vec3(_329.x, 0.0, _329.z))) * float16_t(smoothstep(-2.2000000476837158203125, 2.2000000476837158203125, _329.y) * smoothstep(2.2000000476837158203125, -2.2000000476837158203125, _329.y))) * _488;
    _485 += _489;
    _329 += vec3(mix(_467, _485, f16vec3(_475)));
    _311 = _329;
    vec3 _338 = (_341._m0 * vec4(_311, 1.0)).xyz;
    mat4 _354 = _341._m0;
    vec3 _357 = _315;
    mat4 _631 = _354;
    mat3 _640 = mat3(vec3(cross(_631[1].xyz, _631[2].xyz)), vec3(cross(_631[2].xyz, _631[0].xyz)), vec3(cross(_631[0].xyz, _631[1].xyz)));
    vec3 _632 = normalize(_640 * _357);
    _353 = _632;
    vec3 _360 = _338;
    if (_341._m1 != 0.0)
    {
        _360.y = _107._m96 - _360.y;
    }
    vec4 _384 = vec4(_360, 1.0);
    vec4 _385 = _107._m8 * _384;
    gl_Position = _385;
    _388 = _320;
    _388.w = 1.0;
    _392 = _107._m17 - _338;
    vec3 _399 = normalize(_392);
    vec3 _402 = reflect(-_399, _353);
    vec3 _410 = _353;
    float _412 = 5.0;
    vec4 _676 = textureLod(_92, _410, _412);
    vec3 _677 = (_676.xyz * _676.xyz) * (_107._m43 / _676.w);
    _407 = vec3(1.0) / _677;
    vec3 _416 = _402;
    float _418 = 5.0;
    vec4 _694 = textureLod(_92, _416, _418);
    vec3 _695 = (_694.xyz * _694.xyz) * (_107._m43 / _694.w);
    _415 = vec3(1.0) / _695;
    _421 = _422;
    _424 = _325;
    vec3 _437 = mix(_107._m51, _107._m47, vec3(0.25)) * 0.100000001490116119384765625;
    _426.x = _437.x;
    _426.y = _437.y;
    _426.z = _437.z;
    _426.w = 1.0;
}

