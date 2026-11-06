#version 450

const vec4 _284[8] = vec4[](vec4(-1.0, -1.0, -1.0, 1.0), vec4(1.0, -1.0, -1.0, 1.0), vec4(-1.0, 1.0, -1.0, 1.0), vec4(1.0, 1.0, -1.0, 1.0), vec4(-1.0, -1.0, 1.0, 1.0), vec4(1.0, -1.0, 1.0, 1.0), vec4(-1.0, 1.0, 1.0, 1.0), vec4(1.0));

layout(set = 0, binding = 2, std140) uniform _102_104
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
} _104;

layout(set = 0, binding = 1, std140) uniform _387_389
{
    vec4 _m0;
    vec2 _m1;
} _389;

layout(set = 0, binding = 4, std430) restrict buffer _468_470
{
    uint _m0[];
} _470;

layout(set = 0, binding = 0) uniform sampler2D _421;

layout(location = 1) in vec4 _93;
layout(location = 0) in vec4 _114;
layout(location = 2) in vec4 _246;
layout(location = 3) in uint _465;

void main()
{
    float _81 = 1.0000000331813535140961264756326e+32;
    vec4 _83 = vec4(_81);
    vec4 _86 = vec4(-_81);
    bool _91 = isnan(_93.x);
    float _98 = _104._m24;
    vec4 _130;
    if (_91)
    {
        float _113 = _114.w;
        vec3 _118 = vec3(_104._m6[0].z, _104._m6[1].z, _104._m6[2].z);
        _130.w = 1.0;
        vec3 _137 = _114.xyz + (_118 * _113);
        _130.x = _137.x;
        _130.y = _137.y;
        _130.z = _137.z;
        _130 = _104._m11 * _130;
        float _150 = _130.w;
        if (_150 >= _98)
        {
            vec3 _158 = vec3(_104._m6[0].x, _104._m6[1].x, _104._m6[2].x);
            vec3 _166 = vec3(_104._m6[0].y, _104._m6[1].y, _104._m6[2].y);
            vec3 _174 = _158 + _166;
            vec3 _185 = _114.xyz + ((_174 - _118) * _113);
            _130.x = _185.x;
            _130.y = _185.y;
            _130.z = _185.z;
            _130.w = 1.0;
            _130 = _104._m11 * _130;
            _86 = _130;
            vec3 _205 = _114.xyz - ((_174 + _118) * _113);
            _130.x = _205.x;
            _130.y = _205.y;
            _130.z = _205.z;
            _130.w = 1.0;
            _130 = _104._m11 * _130;
            _83 = _130;
            vec4 _220 = _83;
            vec2 _223 = _220.xy / vec2(_130.w);
            _83.x = _223.x;
            _83.y = _223.y;
            vec4 _230 = _86;
            vec2 _233 = _230.xy / vec2(_130.w);
            _86.x = _233.x;
            _86.y = _233.y;
        }
        _86.w = _150;
    }
    else
    {
        mat3x4 _243 = mat3x4(vec4(_114), vec4(_93), vec4(_246));
        for (int _265 = 0; _265 < 8; _265++)
        {
            vec3 _291 = _284[_265] * _243;
            _130.x = _291.x;
            _130.y = _291.y;
            _130.z = _291.z;
            _130.w = 1.0;
            _130 = _104._m11 * _130;
            float _304 = _130.w;
            vec4 _305 = _130;
            vec2 _308 = _305.xy / vec2(_304);
            _130.x = _308.x;
            _130.y = _308.y;
            _83 = min(_83, _130);
            _86 = max(_86, _130);
        }
    }
    bool _321 = false;
    if (_86.w < _98)
    {
    }
    else
    {
        bool _333 = _86.w > _98;
        bool _340;
        if (_333)
        {
            _340 = _83.w < _98;
        }
        else
        {
            _340 = _333;
        }
        if (_340)
        {
            _321 = true;
        }
        else
        {
            if (_83.w > _98)
            {
                float _351 = dot(_86 - _83, _86 - _83);
                bool _361 = _351 > 9.9999999600419720025001879548654e-13;
                bool _376;
                if (_361)
                {
                    vec4 _373 = vec4(_83.xy, _86.xy);
                    _373 -= vec4(1.0, 1.0, -1.0, -1.0);
                    vec4 _484 = _373;
                    vec2 _486 = -_484.zw;
                    _373.z = _486.x;
                    _373.w = _486.y;
                    bool _480 = any(greaterThan(_373, vec4(0.0)));
                    _376 = !_480;
                }
                else
                {
                    _376 = _361;
                }
                if (_376)
                {
                    vec2 _379 = _86.xy - _83.xy;
                    _379 *= 0.5;
                    _379 *= _389._m0.xy;
                    vec2 _396 = (_86.xy + _83.xy) * 0.5;
                    vec2 _403 = _396;
                    vec2 _494 = (_403 * 0.5) + vec2(0.5);
                    _396 = _494;
                    vec2 _407 = _379;
                    float _500 = max(_407.x, _407.y);
                    float _406 = ceil(log2(_500));
                    float _412 = _98 / _83.w;
                    vec4 _417;
                    _417.x = textureLodOffset(_421, _396, _406, ivec2(0, 1)).x;
                    _417.y = textureLodOffset(_421, _396, _406, ivec2(1)).x;
                    _417.z = textureLodOffset(_421, _396, _406, ivec2(1, 0)).x;
                    _417.w = textureLodOffset(_421, _396, _406, ivec2(0)).x;
                    vec4 _452 = _417;
                    float _507 = min(min(_452.x, _452.y), min(_452.z, _452.w));
                    float _451 = _507;
                    _321 = _412 >= _451;
                }
            }
        }
    }
    uint _459 = uint(_321 ? 0 : 1);
    uint _463 = _465;
    _470._m0[_463] = _459;
}

