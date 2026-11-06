#version 450

layout(set = 1, binding = 0, std140) uniform _462_464
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
    float _m4;
    vec3 _m5;
    float _m6;
    float _m7;
    float _m8;
    float _m9;
    float _m10;
} _464;

layout(set = 1, binding = 2, std140) uniform _554_556
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
} _556;

layout(set = 1, binding = 1, std140) uniform _636_638
{
    vec4 _m0;
    vec2 _m1;
} _638;

layout(set = 1, binding = 3) uniform mediump sampler2D _447;
layout(set = 1, binding = 4) uniform sampler2D _653;

layout(location = 2) in vec3 _405;
layout(location = 1) in vec3 _422;
layout(location = 4) in vec2 _438;
layout(location = 0) in vec4 _442;
layout(location = 3) in vec3 _482;
layout(location = 0) out vec4 _686;
layout(location = 1) out vec4 _698;

void main()
{
    float _403 = length(_405);
    vec3 _413;
    if (_403 > 9.9999999747524270787835121154785e-07)
    {
        _413 = normalize(_405);
    }
    else
    {
        _413 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _408 = _413;
    float _421 = length(_422);
    vec3 _428;
    if (_421 > 9.9999999747524270787835121154785e-07)
    {
        _428 = normalize(_422);
    }
    else
    {
        _428 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _425 = _428;
    vec2 _436 = _438;
    vec4 _440 = _442 * texture(_447, _436);
    vec4 _452 = _440;
    float _460 = 1.0 - abs(dot(_408, _425));
    float _731 = clamp(_460, 0.0, 1.0);
    float _454 = pow(_731, _464._m6) * _464._m7;
    if (_464._m9 != 0.0)
    {
        vec3 _488 = _482 * _464._m10;
        vec3 _735 = floor(_488 + vec3(dot(_488, vec3(0.3333333432674407958984375))));
        vec3 _736 = (_488 - _735) + vec3(dot(_735, vec3(0.16666667163372039794921875)));
        vec3 _737 = step(_736.yzx, _736);
        vec3 _738 = vec3(1.0) - _737;
        vec3 _739 = min(_737, _738.zxy);
        vec3 _740 = max(_737, _738.zxy);
        vec3 _741 = (_736 - _739) + vec3(0.16666667163372039794921875);
        vec3 _742 = (_736 - _740) + vec3(0.3333333432674407958984375);
        vec3 _743 = _736 - vec3(0.5);
        _735 = mod(_735, vec3(289.0));
        vec4 _745 = vec4(_735.z) + vec4(0.0, _739.z, _740.z, 1.0);
        vec4 _1033 = mod(((_745 * _745) * 34.0) + _745, vec4(289.0));
        vec4 _746 = (_1033 + vec4(_735.y)) + vec4(0.0, _739.y, _740.y, 1.0);
        vec4 _1043 = mod(((_746 * _746) * 34.0) + _746, vec4(289.0));
        vec4 _747 = (_1043 + vec4(_735.x)) + vec4(0.0, _739.x, _740.x, 1.0);
        vec4 _1053 = mod(((_747 * _747) * 34.0) + _747, vec4(289.0));
        vec4 _744 = _1053;
        float _748 = 0.14285714924335479736328125;
        vec3 _749 = (vec3(2.0, 0.5, 1.0) * _748) - vec3(0.0, 1.0, 0.0);
        vec4 _750 = _744 - (floor((_744 * _749.z) * _749.z) * 49.0);
        vec4 _751 = floor(_750 * _749.z);
        vec4 _752 = floor(_750 - (_751 * 7.0));
        vec4 _753 = (_751 * _749.x) + _749.yyyy;
        vec4 _754 = (_752 * _749.x) + _749.yyyy;
        vec4 _755 = (vec4(1.0) - abs(_753)) - abs(_754);
        vec4 _756 = vec4(_753.xy, _754.xy);
        vec4 _757 = vec4(_753.zw, _754.zw);
        vec4 _758 = (floor(_756) * 2.0) + vec4(1.0);
        vec4 _759 = (floor(_757) * 2.0) + vec4(1.0);
        vec4 _760 = -step(_755, vec4(0.0));
        vec4 _761 = _756.xzyw + (_758.xzyw * _760.xxyy);
        vec4 _762 = _757.xzyw + (_759.xzyw * _760.zzww);
        vec3 _763 = vec3(_761.xy, _755.x);
        vec3 _764 = vec3(_761.zw, _755.y);
        vec3 _765 = vec3(_762.xy, _755.z);
        vec3 _766 = vec3(_762.zw, _755.w);
        vec4 _768 = vec4(dot(_763, _763), dot(_764, _764), dot(_765, _765), dot(_766, _766));
        vec4 _1063 = vec4(1.792842864990234375) - (_768 * 0.8537347316741943359375);
        vec4 _767 = _1063;
        _763 *= _767.x;
        _764 *= _767.y;
        _765 *= _767.z;
        _766 *= _767.w;
        vec4 _769 = max(vec4(0.60000002384185791015625) - vec4(dot(_736, _736), dot(_741, _741), dot(_742, _742), dot(_743, _743)), vec4(0.0));
        _769 *= _769;
        float _770 = 42.0 * dot(_769 * _769, vec4(dot(_763, _736), dot(_764, _741), dot(_765, _742), dot(_766, _743)));
        float _481 = (_770 * 0.5) + 0.5;
        _454 += (_481 * _464._m9);
    }
    float _502 = 1.0 - _464._m8;
    float _1069 = clamp(_502, 0.0, 1.0);
    _454 = smoothstep(_1069, 1.0, _454);
    vec4 _506 = _452;
    vec3 _514 = mix(_506.xyz, _464._m5, vec3(_454));
    _452.x = _514.x;
    _452.y = _514.y;
    _452.z = _514.z;
    vec3 _521 = vec3(0.0);
    float _523 = dot(_440.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _534 = _464._m0.x > 9.9999999747524270787835121154785e-07;
    bool _542;
    if (_534)
    {
        _542 = _523 > (1.0 - _464._m0.x);
    }
    else
    {
        _542 = _534;
    }
    if (_542)
    {
        _521 = ((_440.xyz * (_464._m0.y + (_464._m1 * _556._m23))) * ((_523 - 1.0) + _464._m0.x)) / vec3(max(_464._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _521 *= (1.0 + _464._m0.z);
    vec4 _580 = _452;
    vec3 _582 = _580.xyz + _521;
    _452.x = _582.x;
    _452.y = _582.y;
    _452.z = _582.z;
    float _589 = dot(_425, _408);
    if (_464._m3 >= 0.0)
    {
        _452.w *= mix(1.0, pow(abs(_589), 3.0), _464._m3);
    }
    else
    {
        _452.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_589), 3.0), -_464._m3);
    }
    _452.w *= (1.0 - _464._m2);
    vec2 _632 = gl_FragCoord.xy * _638._m0.zw;
    float _644 = 1.0 / gl_FragCoord.w;
    float _660 = max(textureLod(_653, _632, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _1073 = 1.0 / _660;
    float _649 = _556._m24 * _1073;
    float _672 = abs(_649 - _644) / (1.0 + _464._m4);
    float _1077 = clamp(_672, 0.0, 1.0);
    _452.w *= _1077;
    float _680 = _644;
    float _1081 = clamp(_680, 0.0, 1.0);
    _452.w *= _1081;
    _686 = vec4(_452.xyz * _452.w, _452.w);
    float _704 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _705 = 256.0;
    float _1085 = log(_704 * 20.0) * (_705 * 0.079292468726634979248046875);
    float _1095 = max(_1085, 0.0);
    float _1086 = _1095;
    _698 = vec4(_1086 * _452.w, _452.w * 1000.0, 0.0, _452.w);
}

