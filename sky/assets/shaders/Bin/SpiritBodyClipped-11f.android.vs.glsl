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
    mat4 _523 = _244;
    mat3 _532 = mat3(vec3(cross(_523[1].xyz, _523[2].xyz)), vec3(cross(_523[2].xyz, _523[0].xyz)), vec3(cross(_523[0].xyz, _523[1].xyz)));
    vec3 _524 = normalize(_532 * _247);
    _241 = _524;
    float _266 = 30.0 * ((length(_232._m1 - _229.xyz) / _232._m2) - 0.300000011920928955078125);
    float _568 = clamp(_266, 0.0, 1.0);
    float _250 = _568;
    float _268 = clamp((_232._m3 * 0.0199999995529651641845703125) * (1.0 + (3.0 * _250)), 0.0, 0.02999999932944774627685546875);
    vec2 _313 = (vec2((_285._m20 * 0.449999988079071044921875) * _232._m4) + ((_229.xz * 0.800000011920928955078125) * _232._m4)) + vec2((_229.y * 1.2000000476837158203125) * _232._m4);
    vec2 _572 = floor(_313 + vec2((_313.x + _313.y) * 0.3660254180431365966796875));
    vec2 _573 = (_313 - _572) + vec2((_572.x + _572.y) * 0.211324870586395263671875);
    vec2 _574 = vec2(float(_573.x > _573.y), float(_573.x <= _573.y));
    vec2 _575 = (_573 - _574) + vec2(0.211324870586395263671875);
    vec2 _576 = (_573 - vec2(1.0)) + vec2(0.42264974117279052734375);
    vec3 _577 = max(vec3(0.5) - vec3(dot(_573, _573), dot(_575, _575), dot(_576, _576)), vec3(0.0));
    vec2 _579 = _572;
    vec3 _669 = fract(_579.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _669 += vec3(dot(_669, _669.yzx + vec3(19.1900005340576171875)));
    vec2 _670 = fract((_669.xx + _669.yz) * _669.zy);
    vec2 _580 = _572 + _574;
    vec3 _694 = fract(_580.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _694 += vec3(dot(_694, _694.yzx + vec3(19.1900005340576171875)));
    vec2 _695 = fract((_694.xx + _694.yz) * _694.zy);
    vec2 _581 = _572 + vec2(1.0);
    vec3 _719 = fract(_581.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _719 += vec3(dot(_719, _719.yzx + vec3(19.1900005340576171875)));
    vec2 _720 = fract((_719.xx + _719.yz) * _719.zy);
    vec3 _578 = (((_577 * _577) * _577) * _577) * vec3(dot(_573, _670), dot(_575, _695), dot(_576, _720));
    float _582 = dot(_578, vec3(70.0));
    _229.x += ((_268 * _582) * _232._m5);
    vec2 _350 = (vec2((_285._m20 * 0.319999992847442626953125) * _232._m4) + ((_229.xz * 1.2999999523162841796875) * _232._m4)) + vec2((_229.y * 0.699999988079071044921875) * _232._m4);
    vec2 _744 = floor(_350 + vec2((_350.x + _350.y) * 0.3660254180431365966796875));
    vec2 _745 = (_350 - _744) + vec2((_744.x + _744.y) * 0.211324870586395263671875);
    vec2 _746 = vec2(float(_745.x > _745.y), float(_745.x <= _745.y));
    vec2 _747 = (_745 - _746) + vec2(0.211324870586395263671875);
    vec2 _748 = (_745 - vec2(1.0)) + vec2(0.42264974117279052734375);
    vec3 _749 = max(vec3(0.5) - vec3(dot(_745, _745), dot(_747, _747), dot(_748, _748)), vec3(0.0));
    vec2 _751 = _744;
    vec3 _841 = fract(_751.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _841 += vec3(dot(_841, _841.yzx + vec3(19.1900005340576171875)));
    vec2 _842 = fract((_841.xx + _841.yz) * _841.zy);
    vec2 _752 = _744 + _746;
    vec3 _866 = fract(_752.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _866 += vec3(dot(_866, _866.yzx + vec3(19.1900005340576171875)));
    vec2 _867 = fract((_866.xx + _866.yz) * _866.zy);
    vec2 _753 = _744 + vec2(1.0);
    vec3 _891 = fract(_753.xyx * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
    _891 += vec3(dot(_891, _891.yzx + vec3(19.1900005340576171875)));
    vec2 _892 = fract((_891.xx + _891.yz) * _891.zy);
    vec3 _750 = (((_749 * _749) * _749) * _749) * vec3(dot(_745, _842), dot(_747, _867), dot(_748, _892));
    float _754 = dot(_750, vec3(70.0));
    _229.z += ((_268 * _754) * _232._m5);
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

