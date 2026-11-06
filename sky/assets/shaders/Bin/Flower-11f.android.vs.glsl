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

struct _62
{
    vec3 _m0;
    vec3 _m1;
    float _m2;
};

layout(set = 0, binding = 2, std140) uniform _200_202
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
} _202;

layout(set = 0, binding = 0, std140) uniform _701_703
{
    float _m0;
    float _m1;
} _703;

layout(set = 0, binding = 1, std140) uniform _1097_1099
{
    vec4 _m0;
    vec2 _m1;
} _1099;

layout(set = 0, binding = 4) uniform mediump sampler2D _506;
layout(set = 0, binding = 5) uniform mediump sampler2D _562;
layout(set = 0, binding = 6) uniform mediump sampler2D _743;
layout(set = 0, binding = 3) uniform mediump sampler2D _760;

layout(location = 1) in vec4 _691;
layout(location = 0) in vec3 _715;
layout(location = 2) in vec4 _896;
layout(location = 3) in vec4 _914;
layout(location = 5) in vec4 _968;
layout(location = 4) in vec4 _975;
layout(location = 0) out vec4 _1140;
layout(location = 1) out vec4 _1151;

void main()
{
    bool _689 = _691.w >= 0.5;
    float _696 = 0.0;
    float _697 = 1.0;
    float _698 = _691.y * _703._m0;
    float _707 = _691.z * _703._m1;
    vec3 _713 = _715;
    vec3 _718 = _713.zxy;
    _718 = fract(_718 * 443.897491455078125);
    _718 += vec3(dot(_718, _718.yzx + vec3(19.1900005340576171875)));
    float _1171 = fract((_718.x + _718.y) * _718.z);
    float _717 = _1171;
    vec3 _722 = _202._m17 - _713;
    float _728 = length(_722);
    vec3 _731 = _722 / vec3(_728);
    float _740 = _728 * 0.00999999977648258209228515625;
    float _1194 = min(_740, 1.0);
    float _736 = _1194;
    vec3 _744 = _713;
    float _746 = 1.0;
    float _1198 = 0.039999999105930328369140625 * _746;
    float _1199 = 0.02500000037252902984619140625 * _746;
    vec2 _1200 = fract((_744.xz * _1198) + _202._m68.xz);
    vec2 _1201 = fract((_744.xz * _1199) + _202._m69.xz);
    vec2 _1203 = textureLod(_743, _1201, 1.0).xy;
    vec2 _1256 = (_1203 * 2.0) - vec2(1.0);
    vec2 _1202 = _1256;
    vec4 _1204 = textureLod(_743, _1200, 1.0);
    vec4 _1239 = _1204;
    vec2 _1246 = ((_1239.xy - vec2(0.5)) * _1202) + vec2(0.5);
    _1204.x = _1246.x;
    _1204.y = _1246.y;
    vec2 _1206 = _1204.xy;
    vec2 _1262 = (_1206 * 2.0) - vec2(1.0);
    vec2 _1205 = -_1262;
    vec2 _1207 = _1205;
    vec2 _742 = _1207;
    vec2 _748 = (_713.xz - _202._m64.xy) * _202._m64.w;
    vec4 _759 = textureLod(_760, _748, 0.0);
    float _765 = _759.w;
    float _1268 = clamp(_765, 0.0, 1.0);
    float _773 = (_1268 * 8.0) - 4.0;
    float _1272 = max(_773, 0.0);
    float _764 = _1272;
    vec2 _775 = (_759.xy * 2.0) * _764;
    bool _781 = true;
    if (_781)
    {
        vec3 _788 = _713;
        vec2 _790 = _788.xz - (_775 * 1.0);
        _713.x = _790.x;
        _713.z = _790.y;
        vec3 _800 = _713;
        vec2 _802 = _800.xz + (_742 * mix(0.0500000007450580596923828125, 1.0, _736));
        _713.x = _802.x;
        _713.z = _802.y;
    }
    else
    {
        _742 = vec2(0.0);
    }
    if (_689)
    {
        vec3 _812 = -vec3(_202._m6[0].x, _202._m6[1].x, _202._m6[2].x);
        vec2 _822 = _742 - (_775 * 5.0);
        vec3 _828 = normalize(vec3(_822.x, -0.5, _822.y));
        _696 = dot(_812, _828);
        float _839 = 0.4000000059604644775390625;
        _696 = clamp(_696, -_839, _839);
    }
    float _846 = 0.0;
    vec3 _847 = vec3(0.0);
    if (_689)
    {
        float _851 = 2.0;
        _707 *= _851;
        _846 = 0.1875;
        _846 *= (1.0 / _851);
    }
    _713.y += 0.00999999977648258209228515625;
    _713.y += _698;
    float _870 = _731.y;
    float _1276 = max(_870, 0.0);
    float _869 = pow(1.0 - _1276, 4.0) * pow(1.0 - _736, 4.0);
    _713.y -= ((0.800000011920928955078125 * _698) * _869);
    float _889 = 1.5 + (_764 * (_689 ? 1.0 : 4.0));
    _847 = _896.xyz * _889;
    vec3 _901 = -_202._m44;
    vec3 _906 = normalize(_731 + (_901 * 1.02499997615814208984375));
    vec3 _913 = normalize((_914.xyz * 2.0) + vec3(_742.x, 0.0, _742.y));
    vec3 _925 = _913;
    float _932 = 1.0 - dot(_731, _906);
    float _1280 = min(_932, 1.0);
    float _927 = mix(0.00999999977648258209228515625, 1.0, pow(_1280, 5.0));
    float _950 = 1.0 - dot(_731, _925);
    float _1284 = min(_950, 1.0);
    vec3 _936 = (_202._m47 * ((6.0 * _927) * _927)) * pow(_1284, 8.0);
    float _954 = pow(1.0 - abs(dot(_731, _925)), 4.0);
    float _965 = dot(_913, _901);
    float _1288 = max(_965, 0.0);
    float _961 = _1288;
    float _967 = _968.y * _968.y;
    vec3 _974 = ((_975.xyz * _975.xyz) / vec3(_975.w)) * mix(_202._m51, _202._m47, vec3(_968.x));
    vec3 _995 = _202._m70 * (_968.w * exp2((255.0 * _968.z) - 128.0));
    vec3 _1011 = _202._m47;
    float _1292 = dot(_1011, vec3(0.2125999927520751953125, 0.715200006961822509765625, 0.072200000286102294921875));
    float _1010 = _1292 * 0.300000011920928955078125;
    vec3 _1020 = _715;
    vec3 _1022 = _913;
    vec3 _1024 = _913;
    float _1026 = 0.89999997615814208984375;
    bool _1027 = false;
    _62 _1296;
    _1296._m0 = vec3(0.0);
    _1296._m1 = vec3(0.0);
    _1296._m2 = 1.0;
    vec4 _1297 = _202._m8 * vec4(_1020, 1.0);
    float _1298 = max(_1297.w, _202._m24);
    vec4 _1352 = _1297;
    vec2 _1355 = _1352.xy / vec2(_1298);
    _1297.x = _1355.x;
    _1297.y = _1355.y;
    vec2 _1299 = _1297.xy;
    vec2 _1519 = (_1299 * 0.5) + vec2(0.5);
    vec2 _1300 = _1519;
    vec2 _1525 = clamp(_1300, vec2(0.0), vec2(1.0));
    _1297.x = _1525.x;
    _1297.y = _1525.y;
    ivec2 _1301 = ivec2(floor(_1297.xy * vec2(32.0, 16.0)));
    int _1302 = (_1301.y * 32) + _1301.x;
    ivec4 _1303 = ivec4(texelFetch(_506, ivec2(0, _1302), 0));
    bool _1388 = _1303.x == _1302;
    bool _1396;
    if (_1388)
    {
        _1396 = _1303.y == (512 - _1302);
    }
    else
    {
        _1396 = _1388;
    }
    bool _1304 = _1396;
    if (_1304)
    {
        _1303.z = clamp(_1303.z, 0, 128);
        _1303.w = clamp(_1303.w, 0, 128);
        int _1305 = 1;
        int _1306 = _1303.z;
        bool _1307 = _1306 > 0;
        while (_1307)
        {
            vec4 _1309 = texelFetch(_506, ivec2(_1305, _1302), 0);
            vec3 _1531 = (((_202._m12[0].xyz * _1309.x) + (_202._m12[1].xyz * _1309.y)) + (_202._m12[2].xyz * _1309.z)) + _202._m12[3].xyz;
            vec4 _1532 = vec4(_1531, _1309.w);
            vec4 _1308 = _1532;
            vec4 _1310 = texelFetch(_562, ivec2(_1305, _1302), 0);
            vec4 _1311 = _1308;
            vec4 _1312 = _1310;
            vec3 _1313 = _1020;
            vec3 _1314 = _1022;
            _62 _1315 = _1296;
            float _1565 = _1312.w;
            float _1566 = _1311.w;
            vec3 _1567 = _1311.xyz - _1313;
            float _1568 = dot(_1567, _1567);
            float _1569 = _1565 * _1568;
            float _1571 = (_1569 - _1566) / (_1569 - _1568);
            float _1622 = clamp(_1571, 0.0, 1.0);
            float _1570 = _1622;
            float _1573 = dot(_1314, _1567) * inversesqrt(_1568);
            float _1626 = max(_1573, 0.0);
            float _1572 = _1626;
            _1315._m1 += (_1312.xyz * _1570);
            _1315._m0 += ((_1312.xyz * _1572) * _1570);
            _1296 = _1315;
            _1305++;
            _1306--;
            _1307 = _1306 > 0;
        }
        _1296._m0 = mix(_1296._m1, _1296._m0, vec3(_1026));
        if (_1027)
        {
            float _1316 = 1.0;
            float _1317 = _202._m14.w;
            float _1318 = 1.0 / _1317;
            vec3 _1319 = _1020 + ((_1024 - _1022) * 0.20000000298023223876953125);
            int _1320 = _1303.w;
            bool _1321 = (_1320 > 0) && (_1316 > 9.9999997473787516355514526367188e-06);
            while (_1321)
            {
                vec4 _1323 = texelFetch(_506, ivec2(_1305, _1302), 0);
                vec3 _1630 = (((_202._m12[0].xyz * _1323.x) + (_202._m12[1].xyz * _1323.y)) + (_202._m12[2].xyz * _1323.z)) + _202._m12[3].xyz;
                vec4 _1631 = vec4(_1630, _1323.w);
                vec4 _1322 = _1631;
                vec4 _1324 = texelFetch(_562, ivec2(_1305, _1302), 0);
                float _1325 = _1324.x;
                vec4 _1326 = _1322;
                vec3 _1327 = _1319;
                float _1328 = _1317;
                float _1329 = _1318;
                float _1330 = _1316;
                float _1331 = _1325;
                do
                {
                    float _1665 = _1326.w;
                    vec3 _1666 = _1326.xyz - _1327;
                    float _1667 = dot(_202._m14.xyz, _1666);
                    bool _1691 = _1667 > 0.0;
                    bool _1700;
                    if (_1691)
                    {
                        _1700 = dot(_1666, _1666) > _1326.w;
                    }
                    else
                    {
                        _1700 = _1691;
                    }
                    if (_1700)
                    {
                        break;
                    }
                    vec3 _1668 = _202._m14.xyz * _1667;
                    float _1669 = 1.0 / dot(_1666, _1666);
                    float _1670 = dot(_1666 - _1668, _1666 - _1668) * _1669;
                    float _1671 = _1665 * _1669;
                    float _1673 = ((_1670 - _1671) - _1328) / (_1671 * (-2.0));
                    float _1753 = clamp(_1673, 0.0, 1.0);
                    float _1672 = _1753;
                    float _1674 = (_1672 * _1672) * (3.0 - (2.0 * _1672));
                    float _1675 = (_1671 * _1329) * _1674;
                    float _1676 = 1.0 - (_1675 * _1331);
                    float _1757 = max(_1676, 0.0);
                    _1330 *= _1757;
                    break;
                } while(false);
                _1316 = _1330;
                _1305++;
                _1320--;
                _1321 = (_1320 > 0) && (_1316 > 9.9999997473787516355514526367188e-06);
            }
            float _1332 = 1.0 + ((1.0 - _1316) * _202._m14.y);
            float _1761 = clamp(_1332, 0.0, 1.0);
            _1296._m2 = _1761;
        }
    }
    _62 _1333 = _1296;
    _62 _1017 = _1333;
    bool _1029 = true;
    vec3 _1032;
    if (_1029)
    {
        _1032 = _1017._m1;
    }
    else
    {
        _1032 = _1017._m0;
    }
    vec3 _1030 = _1032;
    _974 += _1030;
    _847 *= (((_202._m47 * _967) * (vec3(_961) + (_936 * 3.0))) + ((_974 + _995) * (1.0 + (_954 * 3.0))));
    vec3 _1064 = (_202._m28 * _1010) * pow(_954, 8.0);
    _847 += _1064;
    _847 *= mix(_689 ? 0.5 : 0.800000011920928955078125, 1.0, _717);
    vec4 _1088 = vec4(_713, 1.0);
    vec4 _1089 = _202._m8 * _1088;
    gl_Position = _1089;
    float _1092 = ((0.5 * _202._m18) * _1099._m0.y) * pow(gl_Position.w, -0.75);
    _1092 *= _707;
    vec4 _1128;
    if (_689)
    {
        float _1121 = length(_713 - _202._m17);
        float _1122 = 10.0;
        float _1123 = 20.0;
        float _1765 = (_1121 - _1122) / (_1123 - _1122);
        float _1776 = clamp(_1765, 0.0, 1.0);
        float _1766 = _1776;
        _846 *= (1.0 + _1766);
        _1128 = vec4(0.5, _717, _696, _846);
    }
    else
    {
        _1128 = vec4(0.0, _717, 0.0, 0.0);
    }
    float _1138 = max(_1092, 1.0);
    gl_PointSize = _1138;
    _1140 = vec4(f16vec4(f16vec3(_847), float16_t(_697)));
    vec4 _1152 = _1128;
    f16vec4 _1784 = f16vec4(_1152);
    _1151 = vec4(_1784);
}

