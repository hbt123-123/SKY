#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _236_238
{
    mat4 _m0;
    vec3 _m1;
    float _m2;
    float _m3;
    float _m4;
    float _m5;
    float _m6;
    float _m7;
} _238;

layout(set = 0, binding = 2, std140) uniform _286_288
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
} _288;

layout(location = 0) out vec3 _230;
layout(location = 0) in vec4 _232;
layout(location = 2) out vec3 _244;
layout(location = 2) in vec3 _246;
layout(location = 1) out vec3 _389;
layout(location = 3) out vec3 _392;
layout(location = 4) out vec4 _402;
layout(location = 3) in vec4 _403;
layout(location = 5) out vec4 _405;
layout(location = 4) in vec4 _406;
layout(location = 6) out vec3 _408;
layout(location = 7) out float _426;

void main()
{
    _230 = _232.xyz;
    vec4 _235 = _238._m0 * _232;
    mat4 _247 = _238._m0;
    vec3 _250 = _246;
    mat4 _466 = _247;
    mat3 _475 = mat3(vec3(cross(_466[1].xyz, _466[2].xyz)), vec3(cross(_466[2].xyz, _466[0].xyz)), vec3(cross(_466[0].xyz, _466[1].xyz)));
    vec3 _467 = normalize(_475 * _250);
    _244 = _467;
    float _269 = 30.0 * ((length(_238._m1 - _235.xyz) / _238._m2) - 0.300000011920928955078125);
    float _511 = clamp(_269, 0.0, 1.0);
    float _253 = _511;
    float _271 = clamp((_238._m3 * 0.0199999995529651641845703125) * (1.0 + (3.0 * _253)), 0.0, 0.02999999932944774627685546875);
    vec2 _316 = (vec2((_288._m20 * 0.449999988079071044921875) * _238._m4) + ((_235.xz * 0.800000011920928955078125) * _238._m4)) + vec2((_235.y * 1.2000000476837158203125) * _238._m4);
    vec2 _515 = floor(_316 + vec2((_316.x + _316.y) * 0.3660254180431365966796875));
    vec2 _516 = (_316 - _515) + vec2((_515.x + _515.y) * 0.211324870586395263671875);
    vec2 _517 = vec2(float(_516.x > _516.y), float(_516.x <= _516.y));
    vec2 _518 = (_516 - _517) + vec2(0.211324870586395263671875);
    vec2 _519 = (_516 - vec2(1.0)) + vec2(0.42264974117279052734375);
    vec3 _520 = max(vec3(0.5) - vec3(dot(_516, _516), dot(_518, _518), dot(_519, _519)), vec3(0.0));
    vec2 _522 = _515;
    vec3 _612 = fract(_522.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _612 += vec3(dot(_612, _612.yzx + vec3(19.1900005340576171875)));
    vec2 _613 = fract((_612.xx + _612.yz) * _612.zy);
    vec2 _523 = _515 + _517;
    vec3 _637 = fract(_523.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _637 += vec3(dot(_637, _637.yzx + vec3(19.1900005340576171875)));
    vec2 _638 = fract((_637.xx + _637.yz) * _637.zy);
    vec2 _524 = _515 + vec2(1.0);
    vec3 _662 = fract(_524.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _662 += vec3(dot(_662, _662.yzx + vec3(19.1900005340576171875)));
    vec2 _663 = fract((_662.xx + _662.yz) * _662.zy);
    vec3 _521 = (((_520 * _520) * _520) * _520) * vec3(dot(_516, _613), dot(_518, _638), dot(_519, _663));
    float _525 = dot(_521, vec3(70.0));
    _235.x += ((_271 * _525) * _238._m5);
    vec2 _353 = (vec2((_288._m20 * 0.319999992847442626953125) * _238._m4) + ((_235.xz * 1.2999999523162841796875) * _238._m4)) + vec2((_235.y * 0.699999988079071044921875) * _238._m4);
    vec2 _687 = floor(_353 + vec2((_353.x + _353.y) * 0.3660254180431365966796875));
    vec2 _688 = (_353 - _687) + vec2((_687.x + _687.y) * 0.211324870586395263671875);
    vec2 _689 = vec2(float(_688.x > _688.y), float(_688.x <= _688.y));
    vec2 _690 = (_688 - _689) + vec2(0.211324870586395263671875);
    vec2 _691 = (_688 - vec2(1.0)) + vec2(0.42264974117279052734375);
    vec3 _692 = max(vec3(0.5) - vec3(dot(_688, _688), dot(_690, _690), dot(_691, _691)), vec3(0.0));
    vec2 _694 = _687;
    vec3 _784 = fract(_694.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _784 += vec3(dot(_784, _784.yzx + vec3(19.1900005340576171875)));
    vec2 _785 = fract((_784.xx + _784.yz) * _784.zy);
    vec2 _695 = _687 + _689;
    vec3 _809 = fract(_695.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _809 += vec3(dot(_809, _809.yzx + vec3(19.1900005340576171875)));
    vec2 _810 = fract((_809.xx + _809.yz) * _809.zy);
    vec2 _696 = _687 + vec2(1.0);
    vec3 _834 = fract(_696.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _834 += vec3(dot(_834, _834.yzx + vec3(19.1900005340576171875)));
    vec2 _835 = fract((_834.xx + _834.yz) * _834.zy);
    vec3 _693 = (((_692 * _692) * _692) * _692) * vec3(dot(_688, _785), dot(_690, _810), dot(_691, _835));
    float _697 = dot(_693, vec3(70.0));
    _235.z += ((_271 * _697) * _238._m5);
    vec4 _364 = _235;
    if (_238._m7 != 0.0)
    {
        _364.y = _288._m96 - _235.y;
    }
    vec4 _386 = _288._m8 * _364;
    gl_Position = _386;
    _389 = _235.xyz;
    _392 = _288._m17 - _235.xyz;
    _402 = _403;
    _405 = _406;
    _408 = vec3(sin(_288._m20 * 1.35000002384185791015625), sin(_288._m20 * 2.480000019073486328125), sin(_288._m20 * 1.78999996185302734375));
    float _431;
    if (_238._m6 > 0.5)
    {
        _431 = 1.0 - _405.w;
    }
    else
    {
        _431 = _405.w;
    }
    _426 = _431;
}

