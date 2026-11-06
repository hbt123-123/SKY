#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 2, std140) uniform _122_124
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
} _124;

layout(set = 1, binding = 1, std140) uniform _367_369
{
    vec4 _m0;
    vec2 _m1;
} _369;

layout(set = 1, binding = 0) uniform mediump sampler2D _173;
layout(set = 1, binding = 3) uniform mediump sampler2D _384;

layout(location = 1) in vec4 _408;
layout(location = 0) out vec4 _447;
layout(location = 0) in vec4 _492;

void main()
{
    vec2 _364 = gl_FragCoord.xy * _369._m0.zw;
    float _376 = 1.0 / gl_FragCoord.w;
    float _391 = max(texture(_384, _364).x, 1.0000000116860974230803549289703e-07);
    float _514 = 1.0 / _391;
    float _380 = _124._m24 * _514;
    float _394 = _380 - _376;
    float _404 = exp2((-_394) * 0.100000001490116119384765625);
    float _518 = clamp(_404, 0.0, 1.0);
    float _398 = 1.0 - _518;
    float _407 = _408.z * 2.0;
    float _413 = dot(_408.xy, _408.xy);
    if (_413 > 0.60000002384185791015625)
    {
        discard;
    }
    float _426 = mix(_413, 1.0, _407);
    float _430 = 1.0 - smoothstep(mix(0.699999988079071044921875, -2.0, _407), 1.0, _413);
    _430 = mix(_430, ((_430 * 0.100000001490116119384765625) + 1.0) - smoothstep(0.0, 0.0199999995529651641845703125, _413), _407);
    float _449 = 0.9900000095367431640625;
    float16_t _522 = float16_t(_449);
    float _451 = _408.w;
    float16_t _526 = float16_t(_451);
    float _455 = _413;
    float16_t _530 = float16_t(_455);
    vec2 _458 = _408.xy;
    float16_t _461 = float16_t(0.5);
    float16_t _462 = _522;
    float16_t _463 = _526;
    float16_t _464 = _530;
    float16_t _535 = _463;
    float _735 = float(_535);
    float _534 = _124._m20 + _735;
    vec2 _537 = _458;
    f16vec2 _739 = f16vec2(_537);
    f16vec2 _536 = _739;
    float _538 = 1.0 / gl_FragCoord.w;
    float _540 = smoothstep(3.0, 20.0, _538);
    float16_t _743 = float16_t(_540);
    float16_t _541 = _743;
    float16_t _747 = clamp(_541, float16_t(0.0), float16_t(1.0));
    float16_t _539 = _747;
    float _542 = 2.0;
    vec2 _543 = (_458 * _542) + vec2(_534 * 0.00999999977648258209228515625, _534 * (-0.07500000298023223876953125));
    f16vec3 _544 = (f16vec4(texture(_173, _543)).xyz * float16_t(2.0)) - f16vec3(float16_t(1.0));
    float _548 = 0.89999997615814208984375;
    float16_t _755 = float16_t(_548);
    f16vec2 _547 = _536 + (((_544.xy * _755) * _536.y) * (float16_t(1.0) - _539));
    float _550 = 40.0;
    float16_t _759 = float16_t(_550);
    float16_t _551 = _547.y * _759;
    float16_t _763 = clamp(_551, float16_t(0.0), float16_t(1.0));
    _547.x *= (float16_t(1.0) + _763);
    float _552 = 0.699999988079071044921875;
    float16_t _767 = float16_t(_552);
    _547.y -= (max(float16_t(0.0), _547.y) * _767);
    float16_t _553 = length(_547);
    float16_t _555 = _462;
    float _771 = float(_555);
    float _556 = 1.0 - (_771 * 1.01199996471405029296875);
    float16_t _775 = float16_t(_556);
    float16_t _554 = _775;
    float _558 = smoothstep(5.0, 40.0, _538);
    float16_t _779 = float16_t(_558);
    float16_t _557 = _779;
    float _560 = 0.006000000052154064178466796875;
    float16_t _783 = float16_t(_560);
    float _561 = 0.0199999995529651641845703125;
    float16_t _787 = float16_t(_561);
    float16_t _559 = mix(_783, _787, _557);
    float16_t _563 = float16_t(1.0) - smoothstep(_554, _554 + _559, _553);
    float16_t _791 = clamp(_563, float16_t(0.0), float16_t(1.0));
    float16_t _562 = _791;
    float _565 = float(sqrt(_464));
    float16_t _795 = float16_t(_565);
    float16_t _564 = _795;
    float16_t _566 = max(float16_t(0.0), float16_t(1.0) - _564);
    float _568 = 102.1347503662109375;
    float16_t _799 = float16_t(_568);
    float16_t _569 = exp2(_799 * (_566 - float16_t(1.0)));
    float16_t _803 = clamp(_569, float16_t(0.0), float16_t(1.0));
    float16_t _567 = _803;
    float16_t _570 = float16_t(1.0) - _536.y;
    float16_t _571 = (_562 * _570) * _570;
    f16vec3 _572 = f16vec3(float16_t(1.0), float16_t(0.199951171875), float16_t(0.0999755859375));
    _572 += ((f16vec3(float16_t(0.5), float16_t(0.89990234375), float16_t(0.0099945068359375)) * _571) * _571);
    float _574 = mod(_534 * 4.0, 6.283185482025146484375);
    float16_t _807 = float16_t(_574);
    float16_t _575 = _807;
    float _812 = 0.15915493667125701904296875;
    float16_t _838 = float16_t(_812);
    float16_t _811 = _575 * _838;
    float16_t _813 = abs((fract(_811 + float16_t(0.5)) * float16_t(2.0)) - float16_t(1.0));
    float _815 = 3.0;
    float16_t _842 = float16_t(_815);
    float16_t _814 = (_813 * _813) * (_842 - (float16_t(2.0) * _813));
    float16_t _816 = (_814 * float16_t(2.0)) - float16_t(1.0);
    float _576 = 0.5099999904632568359375;
    float16_t _846 = float16_t(_576);
    float16_t _573 = (_816 * float16_t(0.5)) + _846;
    float16_t _578 = _539 * _539;
    float16_t _850 = clamp(_578, float16_t(0.0), float16_t(1.0));
    float16_t _577 = mix(_573, float16_t(1.0), _850);
    float _580 = 500.0;
    float16_t _854 = float16_t(_580);
    float _581 = 6.0;
    float16_t _858 = float16_t(_581);
    float16_t _579 = mix(_854, _858, _539);
    float _582 = 0.20000000298023223876953125;
    float16_t _862 = float16_t(_582);
    float16_t _583 = max(float16_t(1.0) - (_539 * float16_t(2.0)), _862);
    float16_t _866 = clamp(_583, float16_t(0.0), float16_t(1.0));
    f16vec3 _584 = (_572 * (_577 * ((_579 * _571) + (_461 * _567)))) * _866;
    f16vec3 _466 = _584;
    vec3 _871 = vec3(_466);
    _447 = vec4(_871, 1.0);
    float _472 = 1.0 / gl_FragCoord.w;
    float _476 = mix(1.0, 0.3499999940395355224609375, smoothstep(50.0, 150.0, _472));
    _447 *= (((((_426 * _430) * _407) * _398) * _476) * _492.w);
}

