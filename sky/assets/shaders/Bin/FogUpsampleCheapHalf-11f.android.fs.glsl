#version 450

layout(set = 1, binding = 2, std140) uniform _197_199
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
} _199;

layout(set = 1, binding = 3) uniform mediump sampler2D _348;
layout(set = 1, binding = 6) uniform mediump sampler2D _420;
layout(set = 1, binding = 5) uniform sampler2D _427;
layout(set = 1, binding = 4) uniform mediump sampler2D _433;
layout(set = 1, binding = 7) uniform mediump sampler2D _598;

layout(location = 0) in vec2 _423;
layout(location = 1) out vec4 _676;
layout(location = 0) out vec4 _712;

void main()
{
    vec4 _419 = textureLod(_420, _423, 0.0);
    float _426 = textureLod(_427, _423, 0.0).x;
    float _432 = textureLod(_433, _423, 0.0).x;
    float _445 = max(_426, 1.0000000116860974230803549289703e-07);
    float _759 = 1.0 / _445;
    float _438 = _199._m24 * _759;
    bool _450 = _426 == 0.0;
    bool _457;
    if (!_450)
    {
        _457 = _419.w == 0.0;
    }
    else
    {
        _457 = _450;
    }
    bool _448 = _457;
    vec3 _482 = (_199._m38 + (_199._m34 * (_423.x + _199._m32.x))) + (_199._m36 * (_423.y + _199._m32.y));
    vec4 _214;
    _214.x = _482.x;
    _214.y = _482.y;
    _214.z = _482.z;
    _214.w = length(_214.xyz);
    vec3 _493 = _214.xyz / vec3(_214.w);
    float _500 = dot(_493, -_199._m44);
    float _506 = pow(abs(_493.y), (1.0 + (_199._m44.y * 0.800000011920928955078125)) / (4.0 - (_500 * 3.0)));
    float _527 = _438;
    float _532 = _506;
    float _763 = min(_527, _199._m40.y);
    vec3 _764 = _199._m17 + (_214.xyz * _527);
    float _766 = (_527 - _199._m40.x) * _199._m40.w;
    float _911 = max(_766, 0.0);
    float _765 = _911;
    float _767 = 0.0;
    if (_765 < 1.0)
    {
        float _768 = float(_199._m17.y <= _199._m41.x);
        float _769 = _768 * ((_764.y + _199._m17.y) - (_199._m41.x * 2.0));
        float _770 = (1.0 - (_768 * 2.0)) * (_764.y - _199._m41.x);
        float _771 = min(_770, 0.0);
        _771 = ((_527 * _199._m41.y) * (-0.5)) * (_769 - ((_771 * _771) / (abs(_199._m17.y - _764.y) + 0.001000000047497451305389404296875)));
        float _772 = 1.0 - exp2((-0.25) * _771);
        float _915 = clamp(_772, 0.0, 1.0);
        _767 = _915;
    }
    vec3 _774 = _199._m17;
    vec3 _775 = _214.xyz / vec3(_214.w);
    vec3 _776 = _199._m17 + ((_199._m44 * (-1000.0)) * ((1000.0 * _199._m46.z) + 1.0));
    float _777 = _527;
    vec3 _919 = _774 - _776;
    float _920 = dot(_775, _919);
    float _921 = dot(_919, _919);
    float _922 = inversesqrt(max(0.001000000047497451305389404296875, _921 - (_920 * _920)));
    float _923 = atan((_777 + _920) * _922) - atan(_920 * _922);
    float _956 = max(_923, 0.0);
    float _924 = _922 * _956;
    float _773 = _924 * (40.0 - (_199._m46.z * 30.0));
    float _778 = _765 + _767;
    float _779 = 1.0 - (0.001000000047497451305389404296875 * _763);
    vec3 _780 = textureLod(_348, vec2(_532, _779), 0.0).xyz * ((1.0 - (_199._m46.z * 0.5)) + _773);
    float _781 = _778;
    float _960 = min(_781, 1.0);
    vec4 _782 = vec4(_780, _960);
    vec4 _522 = _782;
    vec3 _536 = _419.xyz;
    vec4 _541 = _522;
    float _543 = _432;
    bool _545 = true;
    float _546 = 1.0;
    if (_545)
    {
        vec4 _974 = _541;
        vec3 _976 = _974.xyz * max(1.0 + _543, 0.20000000298023223876953125);
        _541.x = _976.x;
        _541.y = _976.y;
        _541.z = _976.z;
    }
    vec3 _965 = _536;
    float _1006 = dot(_965, vec3(0.2125999927520751953125, 0.715200006961822509765625, 0.072200000286102294921875));
    float _964 = (_1006 * _199._m40.z) * _546;
    float _966 = _541.w - (_964 * _964);
    float _1010 = max(_966, 0.0);
    _541.w = _1010;
    vec3 _967 = mix(_536, _541.xyz, vec3(_541.w));
    _522 = _541;
    vec3 _535 = _967;
    if (!(_199._m26 != 0u))
    {
        vec3 _557 = _199._m17 + (_214.xyz * _438);
        vec4 _565 = _199._m10 * vec4(_557 - (_199._m79.xyz * 0.5), 1.0);
        _565 /= vec4(_565.w * 2.0);
        vec4 _590 = _565;
        vec2 _592 = _590.xy + vec2(0.5);
        _565.x = _592.x;
        _565.y = _592.y;
        vec4 _597 = textureLod(_598, _565.xy, 0.0);
        float _605 = _597.w;
        float _608 = 256.0;
        float _1014 = pow(300000.0, abs(_605 / _608)) * 0.0500000007450580596923828125;
        float _603 = _1014;
        bool _613 = _597.w == 0.0;
        bool _626;
        if (!_613)
        {
            vec2 _617 = _565.xy;
            vec2 _1022 = clamp(_617, vec2(0.0), vec2(1.0));
            _626 = any(notEqual(_1022, _565.xy));
        }
        else
        {
            _626 = _613;
        }
        bool _610 = _626;
        float _627 = abs(_603 - _438);
        _627 = (0.87000000476837158203125 * _419.w) * exp(_627 * (-2.0));
        vec4 _641 = _597;
        vec3 _649 = clamp(_641.xyz, _535 * 0.89999997615814208984375, _535 * 1.10000002384185791015625);
        _597.x = _649.x;
        _597.y = _649.y;
        _597.z = _649.z;
        _535 = mix(_535, _597.xyz, vec3(min(float(!_610), _627)));
    }
    float _666 = (_535.x + _535.y) + _535.z;
    vec3 _679;
    if (isnan(_666))
    {
        _679 = vec3(0.0);
    }
    else
    {
        _679 = _535;
    }
    _676.x = _679.x;
    _676.y = _679.y;
    _676.z = _679.z;
    float _693 = _438;
    float _695 = 256.0;
    float _1028 = log(_693 * 20.0) * (_695 * 0.079292468726634979248046875);
    float _1038 = max(_1028, 0.0);
    float _1029 = _1038;
    _676.w = _1029 * (_448 ? (-1.0) : 1.0);
    vec3 _702 = _535;
    vec3 _1042 = _702;
    _535 = _1042;
    vec3 _719 = _535 / vec3(_199._m23);
    vec3 _1045 = vec3(1.0) + max(vec3(9.9999997473787516355514526367188e-05), _719);
    vec3 _1052 = vec3(1.0) / _1045;
    vec3 _1046 = _1052;
    _712.x = _1046.x;
    _712.y = _1046.y;
    _712.z = _1046.z;
    _712.w = _419.w;
}

