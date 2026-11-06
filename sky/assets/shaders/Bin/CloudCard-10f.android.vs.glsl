#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _101_103
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
} _103;

layout(set = 0, binding = 0) uniform mediump sampler2D _132;
layout(set = 0, binding = 4) uniform sampler3D _193;
layout(set = 0, binding = 5) uniform mediump sampler3D _206;
layout(set = 0, binding = 3) uniform sampler3D _247;
layout(set = 0, binding = 6) uniform mediump sampler2D _571;

layout(location = 0) in vec3 _524;
layout(location = 3) out vec3 _527;
layout(location = 4) out vec2 _546;
layout(location = 2) in vec4 _548;
layout(location = 1) out vec3 _595;
layout(location = 1) in vec4 _596;
layout(location = 0) out vec3 _599;
layout(location = 6) out float _602;
layout(location = 4) in vec4 _656;
layout(location = 3) in vec4 _663;
layout(location = 2) out vec3 _686;
layout(location = 5) out vec2 _732;

void main()
{
    vec3 _522 = _524;
    _527 = _103._m17 - _522;
    _546 = _548.xy;
    vec2 _551 = (_546 + (vec2(0.100000001490116119384765625, 0.0) * _103._m20)) * 0.20000000298023223876953125;
    vec2 _560 = ((_546 * 0.25) + (vec2(0.0, 0.0500000007450580596923828125) * _103._m20)) * 0.20000000298023223876953125;
    vec2 _570 = (textureLod(_571, _551, 0.0).xy * 2.0) - vec2(1.0);
    vec2 _579 = (textureLod(_571, _560, 0.0).xy * 2.0) - vec2(1.0);
    _546 += (((_570 + _579) * vec2(1.0, 0.25)) * 0.004999999888241291046142578125);
    _595 = _596.xyz;
    _599 = _522;
    _602 = pow(0.5 + (0.5 * _596.w), 4.0);
    vec4 _621 = vec4(_522, 1.0);
    vec4 _622 = _103._m8 * _621;
    gl_Position = _622;
    vec2 _625 = vec2(0.5) + ((gl_Position.xy / vec2(gl_Position.w)) * 0.5);
    vec3 _636 = normalize((_103._m38 + (_103._m34 * _625.x)) + (_103._m36 * _625.y));
    float _655 = _656.y * _656.y;
    vec3 _662 = (_663.xyz * _663.xyz) / vec3(_663.w);
    float _673 = _656.x;
    float _676 = _656.w * exp2((255.0 * _656.z) - 128.0);
    vec3 _687 = _522;
    vec3 _689 = _636;
    vec3 _693 = _662;
    float _695 = _673;
    float _697 = _655;
    float _699 = _676;
    float _701 = 1.0;
    vec3 _780 = _693;
    float _941 = dot(_780, vec3(0.2125999927520751953125, 0.715200006961822509765625, 0.072200000286102294921875));
    float _779 = _941;
    _693 = mix(_693, vec3(_779), vec3(float(_103._m81.w < 0.0)));
    vec3 _781 = _693 * mix(_103._m51, _103._m47, vec3(_695));
    _781 += (_103._m70 * _699);
    float _782 = 2.5;
    float _783 = 4.0;
    vec3 _784 = _687 - (_103._m44 * _782);
    vec3 _786 = _784;
    float _946;
    do
    {
        vec3 _948 = _786;
        float _1029 = 0.0;
        _786 = _948;
        float _947 = _1029;
        vec3 _949 = (_786 - _103._m89) * 0.0625;
        vec3 _950 = floor(_949);
        vec3 _951 = (_950 + vec3(0.5)) * (vec3(16.0) / _103._m90);
        vec2 _952 = textureLod(_193, _951, 0.0).xy;
        if ((_952.x + _952.y) == 0.0)
        {
            _947 = textureLod(_206, _951, 0.0).x * 0.800000011920928955078125;
        }
        else
        {
            vec3 _953 = ((_949 - _950) * (1.0 - _103._m82.z)) + vec3(0.5 * _103._m82.z);
            vec3 _954 = vec3(((_952 * 255.0) + _953.xy) * _103._m86, _953.z);
            _947 += (textureLod(_247, _954, 0.0).x * 5.0);
            _946 = _947;
            break;
        }
        _946 = _947;
        break;
    } while(false);
    float _955 = _946;
    float _785 = _955;
    float _788 = 0.25 - ((1.75 * _783) * _785);
    float _1031 = max(_788, 0.0);
    float _787 = (abs(_103._m81.w) * 0.20000000298023223876953125) * _1031;
    _787 *= _701;
    vec3 _790 = _687;
    vec2 _1036;
    do
    {
        vec2 _1037 = (_790.xz - _103._m64.xy) * _103._m64.w;
        vec2 _1038 = _1037;
        vec2 _1082 = clamp(_1038, vec2(0.0), vec2(1.0));
        if (any(notEqual(_1082, _1037)))
        {
            _1036 = vec2(0.0);
            break;
        }
        vec2 _1039 = textureLod(_132, _1037, 0.0).yw;
        float _1040 = clamp(_1039.x * (-4.0), -1.0, 0.0);
        _1036 = vec2((-_1040) * 1.0, (_1039.y * _1039.y) * _1039.y);
        break;
    } while(false);
    vec2 _1041 = _1036;
    vec2 _789 = _1041;
    float _791 = 1.0 + (_789.x / 1.0);
    float _792 = 0.75;
    float _793 = 0.25;
    float _794 = 0.699999988079071044921875;
    float _795 = _791 * exp2((-2.75) * sqrt(_787));
    float _796 = dot(_689, -_103._m44);
    float _798 = _697 * _795;
    float _1088 = clamp(_798, 0.0, 1.0);
    float _797 = mix(0.20000000298023223876953125, 0.004999999888241291046142578125, _1088);
    float _799 = _797 / (_797 - (_796 - 1.0));
    _799 /= (_797 * log((2.0 / _797) + 1.0));
    float _800 = (8.0 * _799) * _795;
    vec3 _801 = (_781 * _792) * (vec3(1.0 + ((1.5 * _793) * _794)) + (_103._m47 * ((0.5 * _695) * _795)));
    vec3 _802 = (_103._m47 * _697) * ((_795 * _794) + ((0.5 + (0.5 * _697)) * _800));
    vec3 _803 = _103._m81.xyz * (_802 + _801);
    _803 += ((_803 * vec3(3.0, 0.4000000059604644775390625, 0.100000001490116119384765625)) * _789.y);
    vec3 _804 = _803;
    _686 = _804;
    vec3 _703 = (_522 - _103._m89) / _103._m90;
    bool _712 = all(equal(_703, clamp(_703, vec3(0.0), vec3(1.0))));
    float _723;
    if (_712)
    {
        vec3 _726 = _522;
        float _1093;
        do
        {
            vec3 _1095 = _726;
            float _1176 = 0.0;
            _726 = _1095;
            float _1094 = _1176;
            vec3 _1096 = (_726 - _103._m89) * 0.0625;
            vec3 _1097 = floor(_1096);
            vec3 _1098 = (_1097 + vec3(0.5)) * (vec3(16.0) / _103._m90);
            vec2 _1099 = textureLod(_193, _1098, 0.0).xy;
            if ((_1099.x + _1099.y) == 0.0)
            {
                float _1100 = textureLod(_206, _1098, 0.0).x * 0.800000011920928955078125;
                _1093 = _1100;
                break;
            }
            vec3 _1101 = ((_1096 - _1097) * (1.0 - _103._m82.z)) + vec3(0.5 * _103._m82.z);
            vec3 _1102 = vec3(((_1099 * 255.0) + _1101.xy) * _103._m86, _1101.z);
            _1094 += (textureLod(_247, _1102, 0.0).x * 5.0);
            _1093 = _1094;
            break;
        } while(false);
        float _1103 = _1093;
        _723 = _1103;
    }
    else
    {
        _723 = 1000.0;
    }
    float _721 = _723;
    float _733 = _721;
    float _735 = 4.0;
    float _736 = 2.0;
    float _1178 = (_733 - _735) / (_736 - _735);
    float _1189 = clamp(_1178, 0.0, 1.0);
    float _1179 = _1189;
    _732 = vec2(_1179, float(_721 < 6.0));
}

