#version 450

layout(set = 1, binding = 0, std140) uniform _1035_1037
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
    vec3 _m21;
    float _m22;
    float _m23;
    vec3 _m24;
    float _m25;
    uint _m26;
} _1037;

layout(set = 1, binding = 7) uniform mediump sampler2DArray _1203;
layout(set = 1, binding = 8) uniform mediump sampler2DArray _1233;
layout(set = 1, binding = 6) uniform mediump sampler2D _1262;

layout(location = 7) flat in vec2 _1166;
layout(location = 8) flat in vec2 _1174;
layout(location = 6) in vec2 _1181;
layout(location = 3) flat in vec4 _1244;
layout(location = 0) out vec4 _1287;

void main()
{
    float _1164 = _1166.x;
    float _1170 = _1166.y;
    float _1173 = _1174.x;
    vec2 _1180 = _1181;
    vec2 _1183 = step(vec2(0.5), vec2(_1164, fract(_1164 * 2.0)));
    vec2 _1191 = mix(_1180, vec2(1.0) - _1180, _1183);
    float _1208 = _1164;
    int _1210 = textureSize(_1203, 0).z;
    int _1909 = int(floor(_1208 * float(_1210)));
    vec3 _1198 = vec3(_1191, float(_1909));
    float _1217 = pow(1.0 - _1170, 3.0);
    float _1221 = mix(1.0, 6.0, _1217);
    _1198.y = mix(_1183.y, _1198.y, _1221);
    float _1232 = texture(_1233, _1198).x;
    if (_1232 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1243 = vec4(_1244);
    float _1251 = 0.0;
    bool _1252 = _1170 < 1.0;
    _1252 = _1252 || (_1173 >= 0.0);
    if (_1252)
    {
        _1251 = texture(_1262, _1180 * _1037._m4).x * 0.20000000298023223876953125;
    }
    if (_1170 < 1.0)
    {
        vec4 _1277 = _1243;
        vec2 _1279 = _1180;
        float _1281 = _1170;
        float _1283 = _1251;
        vec4 _1917 = vec4(_1037._m1, 0.0);
        float _1918 = (1.0 - _1281) * (1.2000000476837158203125 + _1037._m3);
        vec4 _1919 = vec4(_1037._m1 * (1.0 + (_1037._m2 * 7.0)), _1277.w);
        vec2 _1921 = _1279;
        float _1922 = _1037._m3;
        float _1923 = _1918;
        float _1924 = _1283;
        float _1977 = 1.0 - _1921.y;
        _1977 = 0.100000001490116119384765625 + (_1977 * 0.800000011920928955078125);
        float _1979 = _1923 - _1977;
        float _2011 = clamp(_1979, 0.0, 1.0);
        float _1980 = _1922;
        float _1981 = _2011;
        float _1982 = _1924;
        float _2015 = ((1.0 + _1980) * _1981) - _1982;
        float _2027 = clamp(_2015, 0.0, 1.0);
        float _2016 = smoothstep(0.0, _1980, _2027);
        float _1978 = _2016;
        float _1983 = pow(1.0 - (2.0 * abs(_1978 - 0.5)), 0.4000000059604644775390625 / max(_1922, 0.001000000047497451305389404296875));
        vec2 _1984 = vec2(_1978, _1983);
        vec2 _1920 = _1984;
        _1277 = mix(_1277, _1917, vec4(_1920.x));
        _1277 = mix(_1277, _1919, vec4(_1920.y));
        if (_1277.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1925 = _1277;
        _1243 = _1925;
    }
    _1287 = vec4(0.0);
}

