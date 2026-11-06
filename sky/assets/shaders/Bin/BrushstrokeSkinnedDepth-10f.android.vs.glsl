#version 450

invariant gl_Position;

struct _74
{
    vec3 _m0;
    vec3 _m1;
    float _m2;
};

struct _439
{
    float _m0[3];
    float _m1[3];
    uint _m2;
    uint _m3[3];
    uint _m4;
    uint _m5;
    uint _m6;
    uint _m7;
};

struct _445
{
    float _m0[3];
    float _m1[3];
    uint _m2;
    uint _m3[3];
    uint _m4;
    uint _m5;
    uint _m6;
    uint _m7;
};

layout(set = 0, binding = 2, std140) uniform _258_260
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
} _260;

layout(set = 0, binding = 4, std430) restrict readonly buffer _447_449
{
    _445 _m0[];
} _449;

layout(set = 0, binding = 0, std140) uniform _590_592
{
    mat4 _m0;
    float _m1;
    uint _m2;
    uint _m3;
    uint _m4;
    float _m5;
} _592;

layout(set = 0, binding = 3) uniform samplerCube _306;
layout(set = 0, binding = 5) uniform mediump sampler2D _729;

layout(location = 0) in vec2 _677;
layout(location = 0) out vec3 _762;
layout(location = 1) out vec3 _764;
layout(location = 2) out vec3 _777;
layout(location = 3) flat out vec4 _783;
layout(location = 4) out vec3 _795;
layout(location = 5) out vec3 _810;
layout(location = 6) out vec2 _842;
layout(location = 7) flat out vec2 _863;

void main()
{
    do
    {
        _439 _441;
        _441._m0[0] = _449._m0[gl_InstanceIndex]._m0[0];
        _441._m0[1] = _449._m0[gl_InstanceIndex]._m0[1];
        _441._m0[2] = _449._m0[gl_InstanceIndex]._m0[2];
        _441._m1[0] = _449._m0[gl_InstanceIndex]._m1[0];
        _441._m1[1] = _449._m0[gl_InstanceIndex]._m1[1];
        _441._m1[2] = _449._m0[gl_InstanceIndex]._m1[2];
        _441._m2 = _449._m0[gl_InstanceIndex]._m2;
        _441._m3[0] = _449._m0[gl_InstanceIndex]._m3[0];
        _441._m3[1] = _449._m0[gl_InstanceIndex]._m3[1];
        _441._m3[2] = _449._m0[gl_InstanceIndex]._m3[2];
        _441._m4 = _449._m0[gl_InstanceIndex]._m4;
        _441._m5 = _449._m0[gl_InstanceIndex]._m5;
        _441._m6 = _449._m0[gl_InstanceIndex]._m6;
        _441._m7 = _449._m0[gl_InstanceIndex]._m7;
        uint _497 = _441._m4;
        vec2 _902 = unpackHalf2x16(_497);
        vec2 _496 = _902;
        float _501 = _496.x;
        if (_501 < 0.0)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        float _518[3] = _441._m0;
        vec3 _906 = vec3(_518[0], _518[1], _518[2]);
        vec3 _517 = _906;
        float _523[3] = _441._m1;
        vec3 _915 = vec3(_523[0], _523[1], _523[2]);
        vec3 _522 = _915;
        uint _528 = _441._m2;
        vec2 _924 = unpackSnorm2x16(_528);
        vec2 _532 = _924;
        vec3 _928 = vec3(_532.x, _532.y, (1.0 - abs(_532.x)) - abs(_532.y));
        float _930 = -_928.z;
        float _968 = clamp(_930, 0.0, 1.0);
        float _929 = _968;
        vec3 _951 = _928;
        vec3 _959 = _928;
        vec2 _961 = _959.xy + ((vec2(1.0) - (step(vec2(0.0), _951.xy) * 2.0)) * _929);
        _928.x = _961.x;
        _928.y = _961.y;
        vec3 _931 = normalize(_928);
        vec3 _527 = _931;
        uint _535 = _441._m3[0];
        vec2 _972 = unpackHalf2x16(_535);
        vec2 _534 = _972;
        uint _540 = _441._m3[1];
        vec2 _976 = unpackHalf2x16(_540);
        vec2 _539 = _976;
        uint _545 = _441._m3[2];
        vec2 _980 = unpackHalf2x16(_545);
        vec2 _544 = _980;
        vec3 _549 = vec3(_534.x, _539.x, _544.x);
        vec3 _557 = vec3(_534.y, _539.y, _544.y);
        uint _566 = _441._m5;
        vec2 _984 = unpackHalf2x16(_566);
        vec2 _565 = _984;
        uint _571 = _441._m6;
        vec2 _988 = unpackHalf2x16(_571);
        vec2 _570 = _988;
        uint _576 = _441._m7;
        uint _992 = _576;
        vec4 _997 = vec4(float((_992 >> uint(0)) & 255u), float((_992 >> uint(8)) & 255u), float((_992 >> uint(16)) & 255u), float((_992 >> uint(24)) & 255u)) * 0.0039215688593685626983642578125;
        vec4 _993 = _997;
        vec4 _575 = _993;
        bool _581 = _496.y < 0.0;
        float _585 = abs(_496.y);
        _74 _589;
        _589._m0 = (_592._m0 * vec4(_517, 1.0)).xyz;
        _589._m1 = (_592._m0 * vec4(_549, 0.0)).xyz;
        _589._m2 = _565.x;
        _74 _617;
        _617._m0 = (_592._m0 * vec4(_522, 1.0)).xyz;
        _617._m1 = (_592._m0 * vec4(_557, 0.0)).xyz;
        _617._m2 = _565.y;
        mat4 _641 = _592._m0;
        vec3 _644 = _527;
        mat4 _1017 = _641;
        mat3 _1026 = mat3(vec3(cross(_1017[1].xyz, _1017[2].xyz)), vec3(cross(_1017[2].xyz, _1017[0].xyz)), vec3(cross(_1017[0].xyz, _1017[1].xyz)));
        vec3 _1018 = normalize(_1026 * _644);
        _527 = _1018;
        float _647 = _592._m1 + _501;
        float _660;
        if ((_585 > 0.0) && (_592._m3 != 0u))
        {
            float _670 = (_260._m20 - _647) / _585;
            float _1062 = clamp(_670, 0.0, 1.0);
            _660 = _1062;
        }
        else
        {
            _660 = 1.0;
        }
        float _652 = _660;
        _74 _683 = _589;
        _74 _685 = _617;
        float _687 = _677.y;
        float _1066 = _687 * _687;
        float _1067 = _1066 * _687;
        float _1068 = ((2.0 * _1067) - (3.0 * _1066)) + 1.0;
        float _1069 = (_1067 - (2.0 * _1066)) + _687;
        float _1070 = ((-2.0) * _1067) + (3.0 * _1066);
        float _1071 = _1067 - _1066;
        _74 _1072;
        _1072._m0 = (((_683._m0 * _1068) + (_683._m1 * _1069)) + (_685._m0 * _1070)) + (_685._m1 * _1071);
        float _1073 = (6.0 * _1066) - (6.0 * _687);
        float _1074 = ((3.0 * _1066) - (4.0 * _687)) + 1.0;
        float _1075 = ((-6.0) * _1066) + (6.0 * _687);
        float _1076 = (3.0 * _1066) - (2.0 * _687);
        _1072._m1 = (((_683._m0 * _1073) + (_683._m1 * _1074)) + (_685._m0 * _1075)) + (_685._m1 * _1076);
        _1072._m2 = mix(_683._m2, _685._m2, _687);
        _74 _1077 = _1072;
        _74 _682 = _1077;
        vec3 _691 = normalize(cross(_527, _682._m1));
        float _701 = float(gl_InstanceIndex) + 0.5;
        float _1174 = fract(_701 * 0.103100001811981201171875);
        _1174 += ((_1174 * (_1174 + 19.1900005340576171875)) * 3.0);
        float _1175 = fract((_1174 + _1174) * _1174);
        float _697 = _1175;
        vec3 _703 = ((_527 * _677.y) * 0.0030000000260770320892333984375) * (_697 + 0.5);
        vec3 _713 = (_682._m0 + ((_691 * _677.x) * _682._m2)) + _703;
        float _726 = _570.x;
        vec3 _730 = _713;
        float _732 = _726;
        float _734 = _592._m5;
        float _1193 = 0.039999999105930328369140625;
        vec2 _1194 = fract(((_730.xz * _1193) + _260._m68.xz) + vec2(_730.y * 0.0500000007450580596923828125));
        vec4 _1195 = textureLod(_729, _1194, 0.0);
        vec2 _1196 = smoothstep(vec2(0.0), vec2(1.0), _1195.xy) - vec2(0.5);
        float _1197 = min(0.4000000059604644775390625, 1.0 - _732);
        _1197 = pow(_1197, 1.7000000476837158203125) * _734;
        vec2 _1198 = _1196 * _1197;
        vec3 _738 = _713;
        vec2 _740 = _738.xz + _1198;
        _713.x = _740.x;
        _713.z = _740.y;
        if (_592._m4 != 0u)
        {
            _713.y = _260._m96 - _713.y;
            _527.y = -_527.y;
        }
        _762 = _713;
        _764 = vec3(_527);
        vec3 _770 = normalize(_260._m17 - _713);
        _777 = vec3(_770);
        _783 = vec4(_575);
        vec3 _790 = reflect(-_770, _527);
        vec3 _798 = _527;
        float _800 = 5.0;
        vec4 _1232 = textureLod(_306, _798, _800);
        vec3 _1233 = (_1232.xyz * _1232.xyz) * (_260._m43 / _1232.w);
        _795 = vec3(vec3(1.0) / max(_1233, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _811 = _790;
        float _813 = 5.0;
        vec4 _1250 = textureLod(_306, _811, _813);
        vec3 _1251 = (_1250.xyz * _1250.xyz) * (_260._m43 / _1250.w);
        _810 = vec3(vec3(1.0) / max(_1251, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _821 = _617._m0 - _589._m0;
        float _827 = dot(_682._m0 - _589._m0, _821) / max(dot(_821, _821), 9.9999999747524270787835121154785e-07);
        float _847 = _827;
        float _1268 = clamp(_847, 0.0, 1.0);
        _842 = vec2((_677.x * 0.5) + 0.5, _1268);
        if ((_592._m2 != 0u) != _581)
        {
            _842.y = 1.0 - _842.y;
        }
        _863 = vec2(_697, _652);
        vec3 _867 = (_260._m6 * vec4(_762, 1.0)).xyz;
        vec4 _883 = vec4(_867, 1.0);
        vec4 _884 = _260._m7 * _883;
        gl_Position = _884;
        break;
    } while(false);
}

