#version 450

layout(set = 1, binding = 2, std140) uniform _216_218
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
} _218;

layout(set = 1, binding = 1, std140) uniform _251_253
{
    vec4 _m0;
    vec2 _m1;
} _253;

layout(set = 1, binding = 0, std140) uniform _1106_1108
{
    vec3 _m0;
    vec3 _m1;
    float _m2;
    float _m3;
    vec2 _m4;
    float _m5;
    float _m6;
    float _m7;
    vec3 _m8;
    float _m9;
    float _m10;
    float _m11;
    float _m12;
    float _m13;
    vec2 _m14;
    float _m15;
    float _m16;
    float _m17;
    uint _m18;
    vec3 _m19;
    float _m20;
    float _m21;
} _1108;

layout(set = 1, binding = 7) uniform mediump sampler2DArray _1217;
layout(set = 1, binding = 8) uniform mediump sampler2DArray _1247;
layout(set = 1, binding = 6) uniform mediump sampler2D _1272;

layout(location = 0) in vec3 _1179;
layout(location = 7) flat in vec2 _1187;
layout(location = 6) in vec2 _1195;
layout(location = 3) flat in vec4 _1258;
layout(location = 0) out vec4 _1297;

void main()
{
    vec3 _1181 = _1179;
    vec2 _1183 = vec2(0.5, 1.0);
    float _1914 = distance(_1181, _218._m17);
    float _1915 = max(0.100000001490116119384765625, _1183.x);
    float _1916 = max(0.100000001490116119384765625, _1183.y);
    float _1918 = (_1914 - _1915) / (_1916 - _1915);
    float _1958 = clamp(_1918, 0.0, 1.0);
    float _1917 = _1958;
    vec2 _1919 = gl_FragCoord.xy;
    vec2 _1920 = _1919;
    vec2 _1921 = _253._m0.xy * _218._m32.zw;
    vec2 _1962 = (fract(_1920 * 0.015625) * 64.0) + _1921;
    float _1963 = dot(vec3(_1962, 1.0), vec3(0.515625, 0.8125, 0.390625));
    float _1964 = fract(_1963);
    if ((_1917 - _1964) <= 0.0)
    {
        discard;
    }
    float _1185 = _1187.x;
    float _1191 = _1187.y;
    vec2 _1194 = _1195;
    vec2 _1197 = step(vec2(0.5), vec2(_1185, fract(_1185 * 2.0)));
    vec2 _1205 = mix(_1194, vec2(1.0) - _1194, _1197);
    float _1222 = _1185;
    int _1224 = textureSize(_1217, 0).z;
    int _1979 = int(floor(_1222 * float(_1224)));
    vec3 _1212 = vec3(_1205, float(_1979));
    float _1231 = pow(1.0 - _1191, 3.0);
    float _1235 = mix(1.0, 6.0, _1231);
    _1212.y = mix(_1197.y, _1212.y, _1235);
    float _1246 = texture(_1247, _1212).x;
    if (_1246 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1257 = vec4(_1258);
    float _1265 = 0.0;
    bool _1266 = _1191 < 1.0;
    if (_1266)
    {
        _1265 = texture(_1272, _1194 * _1108._m4).x * 0.20000000298023223876953125;
    }
    if (_1191 < 1.0)
    {
        vec4 _1287 = _1257;
        vec2 _1289 = _1194;
        float _1291 = _1191;
        float _1293 = _1265;
        vec4 _1987 = vec4(_1108._m1, 0.0);
        float _1988 = (1.0 - _1291) * (1.2000000476837158203125 + _1108._m3);
        vec4 _1989 = vec4(_1108._m1 * (1.0 + (_1108._m2 * 7.0)), _1287.w);
        vec2 _1991 = _1289;
        float _1992 = _1108._m3;
        float _1993 = _1988;
        float _1994 = _1293;
        float _2047 = 1.0 - _1991.y;
        _2047 = 0.100000001490116119384765625 + (_2047 * 0.800000011920928955078125);
        float _2049 = _1993 - _2047;
        float _2081 = clamp(_2049, 0.0, 1.0);
        float _2050 = _1992;
        float _2051 = _2081;
        float _2052 = _1994;
        float _2085 = ((1.0 + _2050) * _2051) - _2052;
        float _2097 = clamp(_2085, 0.0, 1.0);
        float _2086 = smoothstep(0.0, _2050, _2097);
        float _2048 = _2086;
        float _2053 = pow(1.0 - (2.0 * abs(_2048 - 0.5)), 0.4000000059604644775390625 / max(_1992, 0.001000000047497451305389404296875));
        vec2 _2054 = vec2(_2048, _2053);
        vec2 _1990 = _2054;
        _1287 = mix(_1287, _1987, vec4(_1990.x));
        _1287 = mix(_1287, _1989, vec4(_1990.y));
        if (_1287.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1995 = _1287;
        _1257 = _1995;
    }
    _1297 = vec4(0.0);
}

