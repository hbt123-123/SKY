#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

invariant gl_Position;

struct _81
{
    vec3 _m0;
    vec3 _m1;
    float _m2;
};

struct _452
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

struct _458
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

layout(set = 0, binding = 2, std140) uniform _271_273
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
} _273;

layout(set = 0, binding = 4, std430) restrict readonly buffer _460_462
{
    _458 _m0[];
} _462;

layout(set = 0, binding = 0, std140) uniform _580_582
{
    mat4 _m0;
    float _m1;
    uint _m2;
    uint _m3;
    uint _m4;
    float _m5;
} _582;

layout(set = 0, binding = 3) uniform samplerCube _319;
layout(set = 0, binding = 5) uniform mediump sampler2D _722;

layout(location = 0) in vec2 _669;
layout(location = 0) out vec3 _755;
layout(location = 1) out vec3 _757;
layout(location = 2) out vec3 _770;
layout(location = 3) flat out vec4 _776;
layout(location = 4) out vec3 _788;
layout(location = 5) out vec3 _803;
layout(location = 6) out vec2 _835;
layout(location = 7) flat out vec2 _856;

void main()
{
    do
    {
        _452 _469;
        _469._m0[0] = _462._m0[gl_InstanceIndex]._m0[0];
        _469._m0[1] = _462._m0[gl_InstanceIndex]._m0[1];
        _469._m0[2] = _462._m0[gl_InstanceIndex]._m0[2];
        _469._m1[0] = _462._m0[gl_InstanceIndex]._m1[0];
        _469._m1[1] = _462._m0[gl_InstanceIndex]._m1[1];
        _469._m1[2] = _462._m0[gl_InstanceIndex]._m1[2];
        _469._m2 = _462._m0[gl_InstanceIndex]._m2;
        _469._m3[0] = _462._m0[gl_InstanceIndex]._m3[0];
        _469._m3[1] = _462._m0[gl_InstanceIndex]._m3[1];
        _469._m3[2] = _462._m0[gl_InstanceIndex]._m3[2];
        _469._m4 = _462._m0[gl_InstanceIndex]._m4;
        _469._m5 = _462._m0[gl_InstanceIndex]._m5;
        _469._m6 = _462._m0[gl_InstanceIndex]._m6;
        _469._m7 = _462._m0[gl_InstanceIndex]._m7;
        _452 _454 = _469;
        uint _473 = _454._m4;
        vec2 _896 = unpackHalf2x16(_473);
        f16vec2 _902 = f16vec2(_896);
        f16vec2 _897 = _902;
        f16vec2 _471 = _897;
        float _477 = float(_471.x);
        if (_477 < 0.0)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        float _496[3] = _454._m0;
        vec3 _906 = vec3(_496[0], _496[1], _496[2]);
        vec3 _495 = _906;
        float _501[3] = _454._m1;
        vec3 _915 = vec3(_501[0], _501[1], _501[2]);
        vec3 _500 = _915;
        uint _506 = _454._m2;
        vec2 _924 = unpackSnorm2x16(_506);
        vec2 _510 = _924;
        vec3 _928 = vec3(_510.x, _510.y, (1.0 - abs(_510.x)) - abs(_510.y));
        float _930 = -_928.z;
        float _968 = clamp(_930, 0.0, 1.0);
        float _929 = _968;
        vec3 _951 = _928;
        vec3 _959 = _928;
        vec2 _961 = _959.xy + ((vec2(1.0) - (step(vec2(0.0), _951.xy) * 2.0)) * _929);
        _928.x = _961.x;
        _928.y = _961.y;
        vec3 _931 = normalize(_928);
        vec3 _505 = _931;
        uint _514 = _454._m3[0];
        vec2 _972 = unpackHalf2x16(_514);
        f16vec2 _978 = f16vec2(_972);
        f16vec2 _973 = _978;
        f16vec2 _512 = _973;
        uint _519 = _454._m3[1];
        vec2 _982 = unpackHalf2x16(_519);
        f16vec2 _988 = f16vec2(_982);
        f16vec2 _983 = _988;
        f16vec2 _518 = _983;
        uint _524 = _454._m3[2];
        vec2 _992 = unpackHalf2x16(_524);
        f16vec2 _998 = f16vec2(_992);
        f16vec2 _993 = _998;
        f16vec2 _523 = _993;
        vec3 _528 = vec3(float(_512.x), float(_518.x), float(_523.x));
        vec3 _539 = vec3(float(_512.y), float(_518.y), float(_523.y));
        uint _552 = _454._m5;
        vec2 _1002 = unpackHalf2x16(_552);
        f16vec2 _1008 = f16vec2(_1002);
        f16vec2 _1003 = _1008;
        f16vec2 _550 = _1003;
        uint _558 = _454._m6;
        vec2 _1012 = unpackHalf2x16(_558);
        f16vec2 _1018 = f16vec2(_1012);
        f16vec2 _1013 = _1018;
        f16vec2 _556 = _1013;
        uint _564 = _454._m7;
        uint _1022 = _564;
        vec4 _1027 = vec4(float((_1022 >> uint(0)) & 255u), float((_1022 >> uint(8)) & 255u), float((_1022 >> uint(16)) & 255u), float((_1022 >> uint(24)) & 255u)) * 0.0039215688593685626983642578125;
        vec4 _1023 = _1027;
        vec4 _562 = _1023;
        bool _569 = float(_471.y) < 0.0;
        float _574 = abs(float(_471.y));
        _81 _579;
        _579._m0 = (_582._m0 * vec4(_495, 1.0)).xyz;
        _579._m1 = (_582._m0 * vec4(_528, 0.0)).xyz;
        _579._m2 = float(_550.x);
        _81 _608;
        _608._m0 = (_582._m0 * vec4(_500, 1.0)).xyz;
        _608._m1 = (_582._m0 * vec4(_539, 0.0)).xyz;
        _608._m2 = float(_550.y);
        mat4 _633 = _582._m0;
        vec3 _636 = _505;
        mat4 _1047 = _633;
        mat3 _1056 = mat3(vec3(cross(_1047[1].xyz, _1047[2].xyz)), vec3(cross(_1047[2].xyz, _1047[0].xyz)), vec3(cross(_1047[0].xyz, _1047[1].xyz)));
        vec3 _1048 = normalize(_1056 * _636);
        _505 = _1048;
        float _639 = _582._m1 + _477;
        float _652;
        if ((_574 > 0.0) && (_582._m3 != 0u))
        {
            float _662 = (_273._m20 - _639) / _574;
            float _1092 = clamp(_662, 0.0, 1.0);
            _652 = _1092;
        }
        else
        {
            _652 = 1.0;
        }
        float _644 = _652;
        _81 _675 = _579;
        _81 _677 = _608;
        float _679 = _669.y;
        float _1096 = _679 * _679;
        float _1097 = _1096 * _679;
        float _1098 = ((2.0 * _1097) - (3.0 * _1096)) + 1.0;
        float _1099 = (_1097 - (2.0 * _1096)) + _679;
        float _1100 = ((-2.0) * _1097) + (3.0 * _1096);
        float _1101 = _1097 - _1096;
        _81 _1102;
        _1102._m0 = (((_675._m0 * _1098) + (_675._m1 * _1099)) + (_677._m0 * _1100)) + (_677._m1 * _1101);
        float _1103 = (6.0 * _1096) - (6.0 * _679);
        float _1104 = ((3.0 * _1096) - (4.0 * _679)) + 1.0;
        float _1105 = ((-6.0) * _1096) + (6.0 * _679);
        float _1106 = (3.0 * _1096) - (2.0 * _679);
        _1102._m1 = (((_675._m0 * _1103) + (_675._m1 * _1104)) + (_677._m0 * _1105)) + (_677._m1 * _1106);
        _1102._m2 = mix(_675._m2, _677._m2, _679);
        _81 _1107 = _1102;
        _81 _674 = _1107;
        vec3 _683 = normalize(cross(_505, _674._m1));
        float _693 = float(gl_InstanceIndex) + 0.5;
        float _1204 = fract(_693 * 0.103100001811981201171875);
        _1204 += ((_1204 * (_1204 + 19.1900005340576171875)) * 3.0);
        float _1205 = fract((_1204 + _1204) * _1204);
        float _689 = _1205;
        vec3 _695 = ((_505 * _669.y) * 0.0030000000260770320892333984375) * (_689 + 0.5);
        vec3 _705 = (_674._m0 + ((_683 * _669.x) * _674._m2)) + _695;
        float _718 = float(_556.x);
        vec3 _723 = _705;
        float _725 = _718;
        float _727 = _582._m5;
        float _1223 = 0.039999999105930328369140625;
        vec2 _1224 = fract(((_723.xz * _1223) + _273._m68.xz) + vec2(_723.y * 0.0500000007450580596923828125));
        vec4 _1225 = textureLod(_722, _1224, 0.0);
        vec2 _1226 = smoothstep(vec2(0.0), vec2(1.0), _1225.xy) - vec2(0.5);
        float _1227 = min(0.4000000059604644775390625, 1.0 - _725);
        _1227 = pow(_1227, 1.7000000476837158203125) * _727;
        vec2 _1228 = _1226 * _1227;
        vec3 _731 = _705;
        vec2 _733 = _731.xz + _1228;
        _705.x = _733.x;
        _705.z = _733.y;
        if (_582._m4 != 0u)
        {
            _705.y = _273._m96 - _705.y;
            _505.y = -_505.y;
        }
        _755 = _705;
        _757 = vec3(_505);
        vec3 _763 = normalize(_273._m17 - _705);
        _770 = vec3(_763);
        _776 = vec4(_562);
        vec3 _783 = reflect(-_763, _505);
        vec3 _791 = _505;
        float _793 = 5.0;
        vec4 _1262 = textureLod(_319, _791, _793);
        vec3 _1263 = (_1262.xyz * _1262.xyz) * (_273._m43 / _1262.w);
        _788 = vec3(vec3(1.0) / max(_1263, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _804 = _783;
        float _806 = 5.0;
        vec4 _1280 = textureLod(_319, _804, _806);
        vec3 _1281 = (_1280.xyz * _1280.xyz) * (_273._m43 / _1280.w);
        _803 = vec3(vec3(1.0) / max(_1281, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _814 = _608._m0 - _579._m0;
        float _820 = dot(_674._m0 - _579._m0, _814) / max(dot(_814, _814), 9.9999999747524270787835121154785e-07);
        float _840 = _820;
        float _1298 = clamp(_840, 0.0, 1.0);
        _835 = vec2((_669.x * 0.5) + 0.5, _1298);
        if ((_582._m2 != 0u) != _569)
        {
            _835.y = 1.0 - _835.y;
        }
        _856 = vec2(_689, _644);
        vec3 _860 = (_273._m6 * vec4(_755, 1.0)).xyz;
        vec4 _876 = vec4(_860, 1.0);
        vec4 _877 = _273._m7 * _876;
        gl_Position = _877;
        break;
    } while(false);
}

