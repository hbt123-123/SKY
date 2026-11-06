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
    mat4 _464 = _247;
    mat3 _473 = mat3(vec3(cross(_464[1].xyz, _464[2].xyz)), vec3(cross(_464[2].xyz, _464[0].xyz)), vec3(cross(_464[0].xyz, _464[1].xyz)));
    vec3 _465 = normalize(_473 * _250);
    _244 = _465;
    float _269 = 30.0 * ((length(_238._m1 - _235.xyz) / _238._m2) - 0.300000011920928955078125);
    float _509 = clamp(_269, 0.0, 1.0);
    float _253 = _509;
    float _271 = clamp((_238._m3 * 0.0199999995529651641845703125) * (1.0 + (3.0 * _253)), 0.0, 0.02999999932944774627685546875);
    vec2 _316 = (vec2((_288._m20 * 0.449999988079071044921875) * _238._m4) + ((_235.xz * 0.800000011920928955078125) * _238._m4)) + vec2((_235.y * 1.2000000476837158203125) * _238._m4);
    vec2 _513 = floor(_316 + vec2((_316.x + _316.y) * 0.3660254180431365966796875));
    vec2 _514 = (_316 - _513) + vec2((_513.x + _513.y) * 0.211324870586395263671875);
    vec2 _515 = vec2(float(_514.x > _514.y), float(_514.x <= _514.y));
    vec2 _516 = (_514 - _515) + vec2(0.211324870586395263671875);
    vec2 _517 = (_514 - vec2(1.0)) + vec2(0.42264974117279052734375);
    vec3 _518 = max(vec3(0.5) - vec3(dot(_514, _514), dot(_516, _516), dot(_517, _517)), vec3(0.0));
    vec2 _520 = _513;
    vec3 _610 = fract(_520.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _610 += vec3(dot(_610, _610.yzx + vec3(19.1900005340576171875)));
    vec2 _611 = fract((_610.xx + _610.yz) * _610.zy);
    vec2 _521 = _513 + _515;
    vec3 _635 = fract(_521.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _635 += vec3(dot(_635, _635.yzx + vec3(19.1900005340576171875)));
    vec2 _636 = fract((_635.xx + _635.yz) * _635.zy);
    vec2 _522 = _513 + vec2(1.0);
    vec3 _660 = fract(_522.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _660 += vec3(dot(_660, _660.yzx + vec3(19.1900005340576171875)));
    vec2 _661 = fract((_660.xx + _660.yz) * _660.zy);
    vec3 _519 = (((_518 * _518) * _518) * _518) * vec3(dot(_514, _611), dot(_516, _636), dot(_517, _661));
    float _523 = dot(_519, vec3(70.0));
    _235.x += ((_271 * _523) * _238._m5);
    vec2 _353 = (vec2((_288._m20 * 0.319999992847442626953125) * _238._m4) + ((_235.xz * 1.2999999523162841796875) * _238._m4)) + vec2((_235.y * 0.699999988079071044921875) * _238._m4);
    vec2 _685 = floor(_353 + vec2((_353.x + _353.y) * 0.3660254180431365966796875));
    vec2 _686 = (_353 - _685) + vec2((_685.x + _685.y) * 0.211324870586395263671875);
    vec2 _687 = vec2(float(_686.x > _686.y), float(_686.x <= _686.y));
    vec2 _688 = (_686 - _687) + vec2(0.211324870586395263671875);
    vec2 _689 = (_686 - vec2(1.0)) + vec2(0.42264974117279052734375);
    vec3 _690 = max(vec3(0.5) - vec3(dot(_686, _686), dot(_688, _688), dot(_689, _689)), vec3(0.0));
    vec2 _692 = _685;
    vec3 _782 = fract(_692.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _782 += vec3(dot(_782, _782.yzx + vec3(19.1900005340576171875)));
    vec2 _783 = fract((_782.xx + _782.yz) * _782.zy);
    vec2 _693 = _685 + _687;
    vec3 _807 = fract(_693.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _807 += vec3(dot(_807, _807.yzx + vec3(19.1900005340576171875)));
    vec2 _808 = fract((_807.xx + _807.yz) * _807.zy);
    vec2 _694 = _685 + vec2(1.0);
    vec3 _832 = fract(_694.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _832 += vec3(dot(_832, _832.yzx + vec3(19.1900005340576171875)));
    vec2 _833 = fract((_832.xx + _832.yz) * _832.zy);
    vec3 _691 = (((_690 * _690) * _690) * _690) * vec3(dot(_686, _783), dot(_688, _808), dot(_689, _833));
    float _695 = dot(_691, vec3(70.0));
    _235.z += ((_271 * _695) * _238._m5);
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

