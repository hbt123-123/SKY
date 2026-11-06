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

layout(set = 0, binding = 0, std140) uniform _614_616
{
    mat4 _m0;
    float _m1;
    uint _m2;
    uint _m3;
    uint _m4;
    float _m5;
} _616;

layout(set = 0, binding = 3) uniform samplerCube _319;
layout(set = 0, binding = 5) uniform mediump sampler2D _756;

layout(location = 0) in vec2 _703;
layout(location = 0) out vec3 _789;
layout(location = 1) out f16vec3 _793;
layout(location = 2) out f16vec3 _803;
layout(location = 3) flat out f16vec4 _808;
layout(location = 4) out f16vec3 _816;
layout(location = 5) out f16vec3 _828;
layout(location = 6) out vec2 _857;
layout(location = 7) flat out vec2 _878;

void main()
{
    do
    {
        _452 _454;
        _454._m0[0] = _462._m0[gl_InstanceIndex]._m0[0];
        _454._m0[1] = _462._m0[gl_InstanceIndex]._m0[1];
        _454._m0[2] = _462._m0[gl_InstanceIndex]._m0[2];
        _454._m1[0] = _462._m0[gl_InstanceIndex]._m1[0];
        _454._m1[1] = _462._m0[gl_InstanceIndex]._m1[1];
        _454._m1[2] = _462._m0[gl_InstanceIndex]._m1[2];
        _454._m2 = _462._m0[gl_InstanceIndex]._m2;
        _454._m3[0] = _462._m0[gl_InstanceIndex]._m3[0];
        _454._m3[1] = _462._m0[gl_InstanceIndex]._m3[1];
        _454._m3[2] = _462._m0[gl_InstanceIndex]._m3[2];
        _454._m4 = _462._m0[gl_InstanceIndex]._m4;
        _454._m5 = _462._m0[gl_InstanceIndex]._m5;
        _454._m6 = _462._m0[gl_InstanceIndex]._m6;
        _454._m7 = _462._m0[gl_InstanceIndex]._m7;
        uint _511 = _454._m4;
        vec2 _918 = unpackHalf2x16(_511);
        f16vec2 _924 = f16vec2(_918);
        f16vec2 _919 = _924;
        f16vec2 _510 = _919;
        float _515 = float(_510.x);
        if (_515 < 0.0)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        float _534[3] = _454._m0;
        vec3 _928 = vec3(_534[0], _534[1], _534[2]);
        vec3 _533 = _928;
        float _539[3] = _454._m1;
        vec3 _937 = vec3(_539[0], _539[1], _539[2]);
        vec3 _538 = _937;
        uint _544 = _454._m2;
        vec2 _946 = unpackSnorm2x16(_544);
        vec2 _548 = _946;
        vec3 _950 = vec3(_548.x, _548.y, (1.0 - abs(_548.x)) - abs(_548.y));
        float _952 = -_950.z;
        float _990 = clamp(_952, 0.0, 1.0);
        float _951 = _990;
        vec3 _973 = _950;
        vec3 _981 = _950;
        vec2 _983 = _981.xy + ((vec2(1.0) - (step(vec2(0.0), _973.xy) * 2.0)) * _951);
        _950.x = _983.x;
        _950.y = _983.y;
        vec3 _953 = normalize(_950);
        vec3 _543 = _953;
        uint _551 = _454._m3[0];
        vec2 _994 = unpackHalf2x16(_551);
        f16vec2 _1000 = f16vec2(_994);
        f16vec2 _995 = _1000;
        f16vec2 _550 = _995;
        uint _556 = _454._m3[1];
        vec2 _1004 = unpackHalf2x16(_556);
        f16vec2 _1010 = f16vec2(_1004);
        f16vec2 _1005 = _1010;
        f16vec2 _555 = _1005;
        uint _561 = _454._m3[2];
        vec2 _1014 = unpackHalf2x16(_561);
        f16vec2 _1020 = f16vec2(_1014);
        f16vec2 _1015 = _1020;
        f16vec2 _560 = _1015;
        vec3 _565 = vec3(float(_550.x), float(_555.x), float(_560.x));
        vec3 _576 = vec3(float(_550.y), float(_555.y), float(_560.y));
        uint _588 = _454._m5;
        vec2 _1024 = unpackHalf2x16(_588);
        f16vec2 _1030 = f16vec2(_1024);
        f16vec2 _1025 = _1030;
        f16vec2 _587 = _1025;
        uint _593 = _454._m6;
        vec2 _1034 = unpackHalf2x16(_593);
        f16vec2 _1040 = f16vec2(_1034);
        f16vec2 _1035 = _1040;
        f16vec2 _592 = _1035;
        uint _598 = _454._m7;
        uint _1044 = _598;
        vec4 _1049 = vec4(float((_1044 >> uint(0)) & 255u), float((_1044 >> uint(8)) & 255u), float((_1044 >> uint(16)) & 255u), float((_1044 >> uint(24)) & 255u)) * 0.0039215688593685626983642578125;
        vec4 _1045 = _1049;
        vec4 _597 = _1045;
        bool _603 = float(_510.y) < 0.0;
        float _608 = abs(float(_510.y));
        _81 _613;
        _613._m0 = (_616._m0 * vec4(_533, 1.0)).xyz;
        _613._m1 = (_616._m0 * vec4(_565, 0.0)).xyz;
        _613._m2 = float(_587.x);
        _81 _642;
        _642._m0 = (_616._m0 * vec4(_538, 1.0)).xyz;
        _642._m1 = (_616._m0 * vec4(_576, 0.0)).xyz;
        _642._m2 = float(_587.y);
        mat4 _667 = _616._m0;
        vec3 _670 = _543;
        mat4 _1069 = _667;
        mat3 _1078 = mat3(vec3(cross(_1069[1].xyz, _1069[2].xyz)), vec3(cross(_1069[2].xyz, _1069[0].xyz)), vec3(cross(_1069[0].xyz, _1069[1].xyz)));
        vec3 _1070 = normalize(_1078 * _670);
        _543 = _1070;
        float _673 = _616._m1 + _515;
        float _686;
        if ((_608 > 0.0) && (_616._m3 != 0u))
        {
            float _696 = (_273._m20 - _673) / _608;
            float _1114 = clamp(_696, 0.0, 1.0);
            _686 = _1114;
        }
        else
        {
            _686 = 1.0;
        }
        float _678 = _686;
        _81 _709 = _613;
        _81 _711 = _642;
        float _713 = _703.y;
        float _1118 = _713 * _713;
        float _1119 = _1118 * _713;
        float _1120 = ((2.0 * _1119) - (3.0 * _1118)) + 1.0;
        float _1121 = (_1119 - (2.0 * _1118)) + _713;
        float _1122 = ((-2.0) * _1119) + (3.0 * _1118);
        float _1123 = _1119 - _1118;
        _81 _1124;
        _1124._m0 = (((_709._m0 * _1120) + (_709._m1 * _1121)) + (_711._m0 * _1122)) + (_711._m1 * _1123);
        float _1125 = (6.0 * _1118) - (6.0 * _713);
        float _1126 = ((3.0 * _1118) - (4.0 * _713)) + 1.0;
        float _1127 = ((-6.0) * _1118) + (6.0 * _713);
        float _1128 = (3.0 * _1118) - (2.0 * _713);
        _1124._m1 = (((_709._m0 * _1125) + (_709._m1 * _1126)) + (_711._m0 * _1127)) + (_711._m1 * _1128);
        _1124._m2 = mix(_709._m2, _711._m2, _713);
        _81 _1129 = _1124;
        _81 _708 = _1129;
        vec3 _717 = normalize(cross(_543, _708._m1));
        float _727 = float(gl_InstanceIndex) + 0.5;
        float _1226 = fract(_727 * 0.103100001811981201171875);
        _1226 += ((_1226 * (_1226 + 19.1900005340576171875)) * 3.0);
        float _1227 = fract((_1226 + _1226) * _1226);
        float _723 = _1227;
        vec3 _729 = ((_543 * _703.y) * 0.0030000000260770320892333984375) * (_723 + 0.5);
        vec3 _739 = (_708._m0 + ((_717 * _703.x) * _708._m2)) + _729;
        float _752 = float(_592.x);
        vec3 _757 = _739;
        float _759 = _752;
        float _761 = _616._m5;
        float _1245 = 0.039999999105930328369140625;
        vec2 _1246 = fract(((_757.xz * _1245) + _273._m68.xz) + vec2(_757.y * 0.0500000007450580596923828125));
        vec4 _1247 = textureLod(_756, _1246, 0.0);
        vec2 _1248 = smoothstep(vec2(0.0), vec2(1.0), _1247.xy) - vec2(0.5);
        float _1249 = min(0.4000000059604644775390625, 1.0 - _759);
        _1249 = pow(_1249, 1.7000000476837158203125) * _761;
        vec2 _1250 = _1248 * _1249;
        vec3 _765 = _739;
        vec2 _767 = _765.xz + _1250;
        _739.x = _767.x;
        _739.z = _767.y;
        if (_616._m4 != 0u)
        {
            _739.y = _273._m96 - _739.y;
            _543.y = -_543.y;
        }
        _789 = _739;
        _793 = f16vec3(_543);
        vec3 _796 = normalize(_273._m17 - _739);
        _803 = f16vec3(_796);
        _808 = f16vec4(_597);
        vec3 _811 = reflect(-_796, _543);
        vec3 _819 = _543;
        float _821 = 5.0;
        vec4 _1284 = textureLod(_319, _819, _821);
        vec3 _1285 = (_1284.xyz * _1284.xyz) * (_273._m43 / _1284.w);
        _816 = f16vec3(vec3(1.0) / max(_1285, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _829 = _811;
        float _831 = 5.0;
        vec4 _1302 = textureLod(_319, _829, _831);
        vec3 _1303 = (_1302.xyz * _1302.xyz) * (_273._m43 / _1302.w);
        _828 = f16vec3(vec3(1.0) / max(_1303, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _836 = _642._m0 - _613._m0;
        float _842 = dot(_708._m0 - _613._m0, _836) / max(dot(_836, _836), 9.9999999747524270787835121154785e-07);
        float _862 = _842;
        float _1320 = clamp(_862, 0.0, 1.0);
        _857 = vec2((_703.x * 0.5) + 0.5, _1320);
        if ((_616._m2 != 0u) != _603)
        {
            _857.y = 1.0 - _857.y;
        }
        _878 = vec2(_723, _678);
        vec3 _882 = (_273._m6 * vec4(_789, 1.0)).xyz;
        vec4 _898 = vec4(_882, 1.0);
        vec4 _899 = _273._m7 * _898;
        gl_Position = _899;
        break;
    } while(false);
}

