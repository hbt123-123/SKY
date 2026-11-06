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
layout(location = 1) out f16vec3 _759;
layout(location = 2) out f16vec3 _769;
layout(location = 3) flat out f16vec4 _774;
layout(location = 4) out f16vec3 _782;
layout(location = 5) out f16vec3 _794;
layout(location = 6) out vec2 _823;
layout(location = 7) flat out vec2 _844;

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
        vec2 _884 = unpackHalf2x16(_473);
        f16vec2 _890 = f16vec2(_884);
        f16vec2 _885 = _890;
        f16vec2 _471 = _885;
        float _477 = float(_471.x);
        if (_477 < 0.0)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        float _496[3] = _454._m0;
        vec3 _894 = vec3(_496[0], _496[1], _496[2]);
        vec3 _495 = _894;
        float _501[3] = _454._m1;
        vec3 _903 = vec3(_501[0], _501[1], _501[2]);
        vec3 _500 = _903;
        uint _506 = _454._m2;
        vec2 _912 = unpackSnorm2x16(_506);
        vec2 _510 = _912;
        vec3 _916 = vec3(_510.x, _510.y, (1.0 - abs(_510.x)) - abs(_510.y));
        float _918 = -_916.z;
        float _956 = clamp(_918, 0.0, 1.0);
        float _917 = _956;
        vec3 _939 = _916;
        vec3 _947 = _916;
        vec2 _949 = _947.xy + ((vec2(1.0) - (step(vec2(0.0), _939.xy) * 2.0)) * _917);
        _916.x = _949.x;
        _916.y = _949.y;
        vec3 _919 = normalize(_916);
        vec3 _505 = _919;
        uint _514 = _454._m3[0];
        vec2 _960 = unpackHalf2x16(_514);
        f16vec2 _966 = f16vec2(_960);
        f16vec2 _961 = _966;
        f16vec2 _512 = _961;
        uint _519 = _454._m3[1];
        vec2 _970 = unpackHalf2x16(_519);
        f16vec2 _976 = f16vec2(_970);
        f16vec2 _971 = _976;
        f16vec2 _518 = _971;
        uint _524 = _454._m3[2];
        vec2 _980 = unpackHalf2x16(_524);
        f16vec2 _986 = f16vec2(_980);
        f16vec2 _981 = _986;
        f16vec2 _523 = _981;
        vec3 _528 = vec3(float(_512.x), float(_518.x), float(_523.x));
        vec3 _539 = vec3(float(_512.y), float(_518.y), float(_523.y));
        uint _552 = _454._m5;
        vec2 _990 = unpackHalf2x16(_552);
        f16vec2 _996 = f16vec2(_990);
        f16vec2 _991 = _996;
        f16vec2 _550 = _991;
        uint _558 = _454._m6;
        vec2 _1000 = unpackHalf2x16(_558);
        f16vec2 _1006 = f16vec2(_1000);
        f16vec2 _1001 = _1006;
        f16vec2 _556 = _1001;
        uint _564 = _454._m7;
        uint _1010 = _564;
        vec4 _1015 = vec4(float((_1010 >> uint(0)) & 255u), float((_1010 >> uint(8)) & 255u), float((_1010 >> uint(16)) & 255u), float((_1010 >> uint(24)) & 255u)) * 0.0039215688593685626983642578125;
        vec4 _1011 = _1015;
        vec4 _562 = _1011;
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
        mat4 _1035 = _633;
        mat3 _1044 = mat3(vec3(cross(_1035[1].xyz, _1035[2].xyz)), vec3(cross(_1035[2].xyz, _1035[0].xyz)), vec3(cross(_1035[0].xyz, _1035[1].xyz)));
        vec3 _1036 = normalize(_1044 * _636);
        _505 = _1036;
        float _639 = _582._m1 + _477;
        float _652;
        if ((_574 > 0.0) && (_582._m3 != 0u))
        {
            float _662 = (_273._m20 - _639) / _574;
            float _1080 = clamp(_662, 0.0, 1.0);
            _652 = _1080;
        }
        else
        {
            _652 = 1.0;
        }
        float _644 = _652;
        _81 _675 = _579;
        _81 _677 = _608;
        float _679 = _669.y;
        float _1084 = _679 * _679;
        float _1085 = _1084 * _679;
        float _1086 = ((2.0 * _1085) - (3.0 * _1084)) + 1.0;
        float _1087 = (_1085 - (2.0 * _1084)) + _679;
        float _1088 = ((-2.0) * _1085) + (3.0 * _1084);
        float _1089 = _1085 - _1084;
        _81 _1090;
        _1090._m0 = (((_675._m0 * _1086) + (_675._m1 * _1087)) + (_677._m0 * _1088)) + (_677._m1 * _1089);
        float _1091 = (6.0 * _1084) - (6.0 * _679);
        float _1092 = ((3.0 * _1084) - (4.0 * _679)) + 1.0;
        float _1093 = ((-6.0) * _1084) + (6.0 * _679);
        float _1094 = (3.0 * _1084) - (2.0 * _679);
        _1090._m1 = (((_675._m0 * _1091) + (_675._m1 * _1092)) + (_677._m0 * _1093)) + (_677._m1 * _1094);
        _1090._m2 = mix(_675._m2, _677._m2, _679);
        _81 _1095 = _1090;
        _81 _674 = _1095;
        vec3 _683 = normalize(cross(_505, _674._m1));
        float _693 = float(gl_InstanceIndex) + 0.5;
        float _1192 = fract(_693 * 0.103100001811981201171875);
        _1192 += ((_1192 * (_1192 + 19.1900005340576171875)) * 3.0);
        float _1193 = fract((_1192 + _1192) * _1192);
        float _689 = _1193;
        vec3 _695 = ((_505 * _669.y) * 0.0030000000260770320892333984375) * (_689 + 0.5);
        vec3 _705 = (_674._m0 + ((_683 * _669.x) * _674._m2)) + _695;
        float _718 = float(_556.x);
        vec3 _723 = _705;
        float _725 = _718;
        float _727 = _582._m5;
        float _1211 = 0.039999999105930328369140625;
        vec2 _1212 = fract(((_723.xz * _1211) + _273._m68.xz) + vec2(_723.y * 0.0500000007450580596923828125));
        vec4 _1213 = textureLod(_722, _1212, 0.0);
        vec2 _1214 = smoothstep(vec2(0.0), vec2(1.0), _1213.xy) - vec2(0.5);
        float _1215 = min(0.4000000059604644775390625, 1.0 - _725);
        _1215 = pow(_1215, 1.7000000476837158203125) * _727;
        vec2 _1216 = _1214 * _1215;
        vec3 _731 = _705;
        vec2 _733 = _731.xz + _1216;
        _705.x = _733.x;
        _705.z = _733.y;
        if (_582._m4 != 0u)
        {
            _705.y = _273._m96 - _705.y;
            _505.y = -_505.y;
        }
        _755 = _705;
        _759 = f16vec3(_505);
        vec3 _762 = normalize(_273._m17 - _705);
        _769 = f16vec3(_762);
        _774 = f16vec4(_562);
        vec3 _777 = reflect(-_762, _505);
        vec3 _785 = _505;
        float _787 = 5.0;
        vec4 _1250 = textureLod(_319, _785, _787);
        vec3 _1251 = (_1250.xyz * _1250.xyz) * (_273._m43 / _1250.w);
        _782 = f16vec3(vec3(1.0) / max(_1251, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _795 = _777;
        float _797 = 5.0;
        vec4 _1268 = textureLod(_319, _795, _797);
        vec3 _1269 = (_1268.xyz * _1268.xyz) * (_273._m43 / _1268.w);
        _794 = f16vec3(vec3(1.0) / max(_1269, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _802 = _608._m0 - _579._m0;
        float _808 = dot(_674._m0 - _579._m0, _802) / max(dot(_802, _802), 9.9999999747524270787835121154785e-07);
        float _828 = _808;
        float _1286 = clamp(_828, 0.0, 1.0);
        _823 = vec2((_669.x * 0.5) + 0.5, _1286);
        if ((_582._m2 != 0u) != _569)
        {
            _823.y = 1.0 - _823.y;
        }
        _844 = vec2(_689, _644);
        vec3 _848 = (_273._m6 * vec4(_755, 1.0)).xyz;
        vec4 _864 = vec4(_848, 1.0);
        vec4 _865 = _273._m7 * _864;
        gl_Position = _865;
        break;
    } while(false);
}

