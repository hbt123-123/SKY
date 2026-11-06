#version 450

layout(set = 1, binding = 0, std140) uniform _1028_1030
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
} _1030;

layout(set = 1, binding = 7) uniform mediump sampler2DArray _1133;
layout(set = 1, binding = 8) uniform mediump sampler2DArray _1163;
layout(set = 1, binding = 6) uniform mediump sampler2D _1188;

layout(location = 7) flat in vec2 _1103;
layout(location = 6) in vec2 _1111;
layout(location = 3) flat in vec4 _1174;
layout(location = 0) out vec4 _1213;

void main()
{
    float _1101 = _1103.x;
    float _1107 = _1103.y;
    vec2 _1110 = _1111;
    vec2 _1113 = step(vec2(0.5), vec2(_1101, fract(_1101 * 2.0)));
    vec2 _1121 = mix(_1110, vec2(1.0) - _1110, _1113);
    float _1138 = _1101;
    int _1140 = textureSize(_1133, 0).z;
    int _1817 = int(floor(_1138 * float(_1140)));
    vec3 _1128 = vec3(_1121, float(_1817));
    float _1147 = pow(1.0 - _1107, 3.0);
    float _1151 = mix(1.0, 6.0, _1147);
    _1128.y = mix(_1113.y, _1128.y, _1151);
    float _1162 = texture(_1163, _1128).x;
    if (_1162 < 0.001000000047497451305389404296875)
    {
        discard;
    }
    vec4 _1173 = vec4(_1174);
    float _1181 = 0.0;
    bool _1182 = _1107 < 1.0;
    if (_1182)
    {
        _1181 = texture(_1188, _1110 * _1030._m4).x * 0.20000000298023223876953125;
    }
    if (_1107 < 1.0)
    {
        vec4 _1203 = _1173;
        vec2 _1205 = _1110;
        float _1207 = _1107;
        float _1209 = _1181;
        vec4 _1825 = vec4(_1030._m1, 0.0);
        float _1826 = (1.0 - _1207) * (1.2000000476837158203125 + _1030._m3);
        vec4 _1827 = vec4(_1030._m1 * (1.0 + (_1030._m2 * 7.0)), _1203.w);
        vec2 _1829 = _1205;
        float _1830 = _1030._m3;
        float _1831 = _1826;
        float _1832 = _1209;
        float _1885 = 1.0 - _1829.y;
        _1885 = 0.100000001490116119384765625 + (_1885 * 0.800000011920928955078125);
        float _1887 = _1831 - _1885;
        float _1919 = clamp(_1887, 0.0, 1.0);
        float _1888 = _1830;
        float _1889 = _1919;
        float _1890 = _1832;
        float _1923 = ((1.0 + _1888) * _1889) - _1890;
        float _1935 = clamp(_1923, 0.0, 1.0);
        float _1924 = smoothstep(0.0, _1888, _1935);
        float _1886 = _1924;
        float _1891 = pow(1.0 - (2.0 * abs(_1886 - 0.5)), 0.4000000059604644775390625 / max(_1830, 0.001000000047497451305389404296875));
        vec2 _1892 = vec2(_1886, _1891);
        vec2 _1828 = _1892;
        _1203 = mix(_1203, _1825, vec4(_1828.x));
        _1203 = mix(_1203, _1827, vec4(_1828.y));
        if (_1203.w < 0.4000000059604644775390625)
        {
            discard;
        }
        vec4 _1833 = _1203;
        _1173 = _1833;
    }
    _1213 = vec4(0.0);
}

