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
    float _733 = clamp(_460, 0.0, 1.0);
    float _454 = pow(_733, _464._m6) * _464._m7;
    if (_464._m9 != 0.0)
    {
        vec3 _488 = _482 * _464._m10;
        vec3 _737 = floor(_488 + vec3(dot(_488, vec3(0.3333333432674407958984375))));
        vec3 _738 = (_488 - _737) + vec3(dot(_737, vec3(0.16666667163372039794921875)));
        vec3 _739 = step(_738.yzx, _738);
        vec3 _740 = vec3(1.0) - _739;
        vec3 _741 = min(_739, _740.zxy);
        vec3 _742 = max(_739, _740.zxy);
        vec3 _743 = (_738 - _741) + vec3(0.16666667163372039794921875);
        vec3 _744 = (_738 - _742) + vec3(0.3333333432674407958984375);
        vec3 _745 = _738 - vec3(0.5);
        _737 = mod(_737, vec3(289.0));
        vec4 _747 = vec4(_737.z) + vec4(0.0, _741.z, _742.z, 1.0);
        vec4 _1035 = mod(((_747 * _747) * 34.0) + _747, vec4(289.0));
        vec4 _748 = (_1035 + vec4(_737.y)) + vec4(0.0, _741.y, _742.y, 1.0);
        vec4 _1045 = mod(((_748 * _748) * 34.0) + _748, vec4(289.0));
        vec4 _749 = (_1045 + vec4(_737.x)) + vec4(0.0, _741.x, _742.x, 1.0);
        vec4 _1055 = mod(((_749 * _749) * 34.0) + _749, vec4(289.0));
        vec4 _746 = _1055;
        float _750 = 0.14285714924335479736328125;
        vec3 _751 = (vec3(2.0, 0.5, 1.0) * _750) - vec3(0.0, 1.0, 0.0);
        vec4 _752 = _746 - (floor((_746 * _751.z) * _751.z) * 49.0);
        vec4 _753 = floor(_752 * _751.z);
        vec4 _754 = floor(_752 - (_753 * 7.0));
        vec4 _755 = (_753 * _751.x) + _751.yyyy;
        vec4 _756 = (_754 * _751.x) + _751.yyyy;
        vec4 _757 = (vec4(1.0) - abs(_755)) - abs(_756);
        vec4 _758 = vec4(_755.xy, _756.xy);
        vec4 _759 = vec4(_755.zw, _756.zw);
        vec4 _760 = (floor(_758) * 2.0) + vec4(1.0);
        vec4 _761 = (floor(_759) * 2.0) + vec4(1.0);
        vec4 _762 = -step(_757, vec4(0.0));
        vec4 _763 = _758.xzyw + (_760.xzyw * _762.xxyy);
        vec4 _764 = _759.xzyw + (_761.xzyw * _762.zzww);
        vec3 _765 = vec3(_763.xy, _757.x);
        vec3 _766 = vec3(_763.zw, _757.y);
        vec3 _767 = vec3(_764.xy, _757.z);
        vec3 _768 = vec3(_764.zw, _757.w);
        vec4 _770 = vec4(dot(_765, _765), dot(_766, _766), dot(_767, _767), dot(_768, _768));
        vec4 _1065 = vec4(1.792842864990234375) - (_770 * 0.8537347316741943359375);
        vec4 _769 = _1065;
        _765 *= _769.x;
        _766 *= _769.y;
        _767 *= _769.z;
        _768 *= _769.w;
        vec4 _771 = max(vec4(0.60000002384185791015625) - vec4(dot(_738, _738), dot(_743, _743), dot(_744, _744), dot(_745, _745)), vec4(0.0));
        _771 *= _771;
        float _772 = 42.0 * dot(_771 * _771, vec4(dot(_765, _738), dot(_766, _743), dot(_767, _744), dot(_768, _745)));
        float _481 = (_772 * 0.5) + 0.5;
        _454 += (_481 * _464._m9);
    }
    float _502 = 1.0 - _464._m8;
    float _1071 = clamp(_502, 0.0, 1.0);
    _454 = smoothstep(_1071, 1.0, _454);
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
    float _1075 = 1.0 / _660;
    float _649 = _556._m24 * _1075;
    float _672 = abs(_649 - _644) / (1.0 + _464._m4);
    float _1079 = clamp(_672, 0.0, 1.0);
    _452.w *= _1079;
    float _680 = _644;
    float _1083 = clamp(_680, 0.0, 1.0);
    _452.w *= _1083;
    _686 = vec4(_452.xyz * _452.w, _452.w);
    float _704 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _705 = 256.0;
    float _1087 = log(_704 * 20.0) * (_705 * 0.079292468726634979248046875);
    float _1097 = max(_1087, 0.0);
    float _1088 = _1097;
    _698 = vec4(_1088 * _452.w, _452.w * 1000.0, 0.0, _452.w);
}

