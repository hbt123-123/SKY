#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _230_232
{
    mat4 _m0;
    vec3 _m1;
    float _m2;
    float _m3;
    float _m4;
    float _m5;
    float _m6;
    float _m7;
    vec3 _m8;
    vec3 _m9;
    vec3 _m10;
    vec3 _m11;
    vec3 _m12;
    vec3 _m13;
} _232;

layout(set = 0, binding = 2, std140) uniform _283_285
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
} _285;

layout(location = 0) in vec4 _237;
layout(location = 1) out vec3 _241;
layout(location = 2) in vec3 _243;
layout(location = 0) out vec3 _386;
layout(location = 2) out vec3 _389;
layout(location = 3) out vec4 _399;
layout(location = 3) in vec4 _400;
layout(location = 4) out vec4 _402;
layout(location = 4) in vec4 _403;
layout(location = 5) out vec3 _405;
layout(location = 6) out float _423;
layout(location = 7) out vec3 _456;
layout(location = 8) out vec3 _488;

void main()
{
    vec4 _229 = _232._m0 * _237;
    mat4 _244 = _232._m0;
    vec3 _247 = _243;
    mat4 _521 = _244;
    mat3 _530 = mat3(vec3(cross(_521[1].xyz, _521[2].xyz)), vec3(cross(_521[2].xyz, _521[0].xyz)), vec3(cross(_521[0].xyz, _521[1].xyz)));
    vec3 _522 = normalize(_530 * _247);
    _241 = _522;
    float _266 = 30.0 * ((length(_232._m1 - _229.xyz) / _232._m2) - 0.300000011920928955078125);
    float _566 = clamp(_266, 0.0, 1.0);
    float _250 = _566;
    float _268 = clamp((_232._m3 * 0.0199999995529651641845703125) * (1.0 + (3.0 * _250)), 0.0, 0.02999999932944774627685546875);
    vec2 _313 = (vec2((_285._m20 * 0.449999988079071044921875) * _232._m4) + ((_229.xz * 0.800000011920928955078125) * _232._m4)) + vec2((_229.y * 1.2000000476837158203125) * _232._m4);
    vec2 _570 = floor(_313 + vec2((_313.x + _313.y) * 0.3660254180431365966796875));
    vec2 _571 = (_313 - _570) + vec2((_570.x + _570.y) * 0.211324870586395263671875);
    vec2 _572 = vec2(float(_571.x > _571.y), float(_571.x <= _571.y));
    vec2 _573 = (_571 - _572) + vec2(0.211324870586395263671875);
    vec2 _574 = (_571 - vec2(1.0)) + vec2(0.42264974117279052734375);
    vec3 _575 = max(vec3(0.5) - vec3(dot(_571, _571), dot(_573, _573), dot(_574, _574)), vec3(0.0));
    vec2 _577 = _570;
    vec3 _667 = fract(_577.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _667 += vec3(dot(_667, _667.yzx + vec3(19.1900005340576171875)));
    vec2 _668 = fract((_667.xx + _667.yz) * _667.zy);
    vec2 _578 = _570 + _572;
    vec3 _692 = fract(_578.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _692 += vec3(dot(_692, _692.yzx + vec3(19.1900005340576171875)));
    vec2 _693 = fract((_692.xx + _692.yz) * _692.zy);
    vec2 _579 = _570 + vec2(1.0);
    vec3 _717 = fract(_579.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _717 += vec3(dot(_717, _717.yzx + vec3(19.1900005340576171875)));
    vec2 _718 = fract((_717.xx + _717.yz) * _717.zy);
    vec3 _576 = (((_575 * _575) * _575) * _575) * vec3(dot(_571, _668), dot(_573, _693), dot(_574, _718));
    float _580 = dot(_576, vec3(70.0));
    _229.x += ((_268 * _580) * _232._m5);
    vec2 _350 = (vec2((_285._m20 * 0.319999992847442626953125) * _232._m4) + ((_229.xz * 1.2999999523162841796875) * _232._m4)) + vec2((_229.y * 0.699999988079071044921875) * _232._m4);
    vec2 _742 = floor(_350 + vec2((_350.x + _350.y) * 0.3660254180431365966796875));
    vec2 _743 = (_350 - _742) + vec2((_742.x + _742.y) * 0.211324870586395263671875);
    vec2 _744 = vec2(float(_743.x > _743.y), float(_743.x <= _743.y));
    vec2 _745 = (_743 - _744) + vec2(0.211324870586395263671875);
    vec2 _746 = (_743 - vec2(1.0)) + vec2(0.42264974117279052734375);
    vec3 _747 = max(vec3(0.5) - vec3(dot(_743, _743), dot(_745, _745), dot(_746, _746)), vec3(0.0));
    vec2 _749 = _742;
    vec3 _839 = fract(_749.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _839 += vec3(dot(_839, _839.yzx + vec3(19.1900005340576171875)));
    vec2 _840 = fract((_839.xx + _839.yz) * _839.zy);
    vec2 _750 = _742 + _744;
    vec3 _864 = fract(_750.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _864 += vec3(dot(_864, _864.yzx + vec3(19.1900005340576171875)));
    vec2 _865 = fract((_864.xx + _864.yz) * _864.zy);
    vec2 _751 = _742 + vec2(1.0);
    vec3 _889 = fract(_751.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _889 += vec3(dot(_889, _889.yzx + vec3(19.1900005340576171875)));
    vec2 _890 = fract((_889.xx + _889.yz) * _889.zy);
    vec3 _748 = (((_747 * _747) * _747) * _747) * vec3(dot(_743, _840), dot(_745, _865), dot(_746, _890));
    float _752 = dot(_748, vec3(70.0));
    _229.z += ((_268 * _752) * _232._m5);
    vec4 _361 = _229;
    if (_232._m7 != 0.0)
    {
        _361.y = _285._m96 - _229.y;
    }
    vec4 _383 = _285._m8 * _361;
    gl_Position = _383;
    _386 = _229.xyz;
    _389 = _285._m17 - _229.xyz;
    _399 = _400;
    _402 = _403;
    _405 = vec3(sin(_285._m20 * 1.35000002384185791015625), sin(_285._m20 * 2.480000019073486328125), sin(_285._m20 * 1.78999996185302734375));
    float _428;
    if (_232._m6 > 0.5)
    {
        _428 = 1.0 - _402.w;
    }
    else
    {
        _428 = _402.w;
    }
    _423 = _428;
    vec3 _439 = _386 - _232._m8;
    vec3 _444 = _386 - _232._m10;
    vec3 _450 = _386 - _232._m12;
    _456 = vec3(dot(_232._m9, _439), dot(_232._m11, _444), dot(_232._m13, _450));
    vec3 _473 = cross(_439, _232._m9);
    vec3 _478 = cross(_444, _232._m11);
    vec3 _483 = cross(_450, _232._m13);
    _488 = vec3(dot(_473, _473), dot(_478, _478), dot(_483, _483));
}

