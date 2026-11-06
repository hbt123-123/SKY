#version 450

invariant gl_Position;

const vec4 _267[8] = vec4[](vec4(-1.0, -1.0, -1.0, 1.0), vec4(1.0, -1.0, -1.0, 1.0), vec4(-1.0, 1.0, -1.0, 1.0), vec4(1.0, 1.0, -1.0, 1.0), vec4(-1.0, -1.0, 1.0, 1.0), vec4(1.0, -1.0, 1.0, 1.0), vec4(-1.0, 1.0, 1.0, 1.0), vec4(1.0));

layout(set = 0, binding = 2, std140) uniform _85_87
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
} _87;

layout(set = 0, binding = 1, std140) uniform _370_372
{
    vec4 _m0;
    vec2 _m1;
} _372;

layout(set = 0, binding = 0) uniform sampler2D _404;

layout(location = 1) in vec4 _76;
layout(location = 0) in vec4 _97;
layout(location = 2) in vec4 _229;
layout(location = 3) in uint _420;
layout(location = 0) out uint _423;
layout(location = 1) out uint _425;

void main()
{
    float _64 = 1.0000000331813535140961264756326e+32;
    vec4 _66 = vec4(_64);
    vec4 _69 = vec4(-_64);
    bool _74 = isnan(_76.x);
    float _81 = _87._m24;
    vec4 _113;
    if (_74)
    {
        float _96 = _97.w;
        vec3 _101 = vec3(_87._m6[0].z, _87._m6[1].z, _87._m6[2].z);
        _113.w = 1.0;
        vec3 _120 = _97.xyz + (_101 * _96);
        _113.x = _120.x;
        _113.y = _120.y;
        _113.z = _120.z;
        _113 = _87._m11 * _113;
        float _133 = _113.w;
        if (_133 >= _81)
        {
            vec3 _141 = vec3(_87._m6[0].x, _87._m6[1].x, _87._m6[2].x);
            vec3 _149 = vec3(_87._m6[0].y, _87._m6[1].y, _87._m6[2].y);
            vec3 _157 = _141 + _149;
            vec3 _168 = _97.xyz + ((_157 - _101) * _96);
            _113.x = _168.x;
            _113.y = _168.y;
            _113.z = _168.z;
            _113.w = 1.0;
            _113 = _87._m11 * _113;
            _69 = _113;
            vec3 _188 = _97.xyz - ((_157 + _101) * _96);
            _113.x = _188.x;
            _113.y = _188.y;
            _113.z = _188.z;
            _113.w = 1.0;
            _113 = _87._m11 * _113;
            _66 = _113;
            vec4 _203 = _66;
            vec2 _206 = _203.xy / vec2(_113.w);
            _66.x = _206.x;
            _66.y = _206.y;
            vec4 _213 = _69;
            vec2 _216 = _213.xy / vec2(_113.w);
            _69.x = _216.x;
            _69.y = _216.y;
        }
        _69.w = _133;
    }
    else
    {
        mat3x4 _226 = mat3x4(vec4(_97), vec4(_76), vec4(_229));
        for (int _248 = 0; _248 < 8; _248++)
        {
            vec3 _274 = _267[_248] * _226;
            _113.x = _274.x;
            _113.y = _274.y;
            _113.z = _274.z;
            _113.w = 1.0;
            _113 = _87._m11 * _113;
            float _287 = _113.w;
            vec4 _288 = _113;
            vec2 _291 = _288.xy / vec2(_287);
            _113.x = _291.x;
            _113.y = _291.y;
            _66 = min(_66, _113);
            _69 = max(_69, _113);
        }
    }
    bool _304 = false;
    if (_69.w < _81)
    {
    }
    else
    {
        bool _316 = _69.w > _81;
        bool _323;
        if (_316)
        {
            _323 = _66.w < _81;
        }
        else
        {
            _323 = _316;
        }
        if (_323)
        {
            _304 = true;
        }
        else
        {
            if (_66.w > _81)
            {
                float _334 = dot(_69 - _66, _69 - _66);
                bool _344 = _334 > 9.9999999600419720025001879548654e-13;
                bool _359;
                if (_344)
                {
                    vec4 _356 = vec4(_66.xy, _69.xy);
                    _356 -= vec4(1.0, 1.0, -1.0, -1.0);
                    vec4 _440 = _356;
                    vec2 _442 = -_440.zw;
                    _356.z = _442.x;
                    _356.w = _442.y;
                    bool _436 = any(greaterThan(_356, vec4(0.0)));
                    _359 = !_436;
                }
                else
                {
                    _359 = _344;
                }
                if (_359)
                {
                    vec2 _362 = _69.xy - _66.xy;
                    _362 *= 0.5;
                    _362 *= _372._m0.xy;
                    vec2 _379 = (_69.xy + _66.xy) * 0.5;
                    vec2 _386 = _379;
                    vec2 _450 = (_386 * 0.5) + vec2(0.5);
                    _379 = _450;
                    vec2 _390 = _362;
                    float _456 = max(_390.x, _390.y);
                    float _389 = ceil(log2(_456));
                    float _395 = _81 / _66.w;
                    float _400 = textureLod(_404, _379, _389).x;
                    _304 = _395 >= _400;
                }
            }
        }
    }
    uint _414 = uint(_304 ? 0 : 1);
    uint _418 = _420;
    _423 = _418;
    _425 = _414;
    gl_Position = vec4(0.0, 0.0, 1.0, 1.0);
}

