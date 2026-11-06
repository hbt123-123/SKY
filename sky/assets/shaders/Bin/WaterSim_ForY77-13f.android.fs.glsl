#version 450

layout(set = 1, binding = 2, std140) uniform _94_96
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
} _96;

layout(set = 1, binding = 3) uniform mediump sampler2D _133;

layout(location = 0) in vec2 _80;
layout(location = 1) out vec4 _222;
layout(location = 0) out vec4 _403;

void main()
{
    vec4 _78;
    _78.x = _80.x;
    _78.y = _80.y;
    vec4 _89 = _78;
    vec2 _109 = (_89.xy / vec2(_96._m64.w)) + _96._m64.xy;
    _78.z = _109.x;
    _78.w = _109.y;
    float _115 = min(0.0500000007450580596923828125, _96._m22);
    vec2 _121 = _78.xy + _96._m65.xy;
    vec4 _129 = textureLodOffset(_133, _121, 0.0, ivec2(0));
    vec2 _140 = textureLodOffset(_133, _121, 0.0, ivec2(0, -1)).xw;
    vec2 _147 = textureLodOffset(_133, _121, 0.0, ivec2(1, 0)).xw;
    vec2 _154 = textureLodOffset(_133, _121, 0.0, ivec2(0, 1)).xw;
    vec2 _160 = textureLodOffset(_133, _121, 0.0, ivec2(-1, 0)).xw;
    if (isnan(_129.x))
    {
        _129.x = 0.0;
        _129.y = 0.0;
        _129.z = 0.0;
        _129.w = 0.0;
        _160.x = 0.0;
        _140.x = 0.0;
    }
    float _177 = (((_140.x - _129.x) + (_154.x - _129.x)) + (_160.x - _129.x)) + (_147.x - _129.x);
    _129.w = max(max(max(max(_140.y, _154.y), _160.y), _147.y) * 0.949999988079071044921875, _129.w) * (1.0 - _115);
    vec3 _239 = clamp(vec3(_160.x - _129.x, _140.x - _129.x, _129.x), vec3(-1.0), vec3(1.0));
    _222.x = _239.x;
    _222.y = _239.y;
    _222.z = _239.z;
    _222.w = _129.w;
    vec3 _251 = vec3(1.0) - (vec3(0.100000001490116119384765625, 0.00999999977648258209228515625, 1.0) * _115);
    vec4 _259 = _129;
    vec3 _261 = _259.xyz * _251;
    _129.x = _261.x;
    _129.y = _261.y;
    _129.z = _261.z;
    _129.z += (_177 * (50.0 * _115));
    float _280 = abs(_129.z);
    float _425 = min(_280, 1.0);
    _129.z = _425 * sign(_129.z);
    _129.x += (_129.z * _115);
    float _295 = _96._m65.z;
    bool _299 = _295 == 0.00012500000593718141317367553710938;
    vec2 _305 = _78.zw;
    vec2 _308 = _96._m66.xy;
    vec2 _312 = _96._m66.zw;
    vec2 _429 = _312 - _308;
    vec2 _430 = _305 - _308;
    float _431 = dot(_430, _429);
    float _432 = dot(_429, _429);
    float _433 = _431 / _432;
    vec2 _434 = _308 + (_429 * _433);
    _434 = (_431 <= 0.0) ? _308 : _434;
    _434 = (_432 <= _431) ? _312 : _434;
    float _435 = distance(_305, _434);
    float _303 = _435;
    float _322 = 1.0 - (_303 / 0.25);
    float _471 = max(_322, 0.0);
    float _317 = _471;
    if (_299)
    {
        if (_317 > 0.0)
        {
            _129.w = 1.0;
        }
    }
    else
    {
        float _333 = _317 * _295;
        if (_333 > 0.0)
        {
            float _346 = _129.x + _333;
            float _475 = max(_346, 0.0);
            float _341 = _475;
            _129.x -= _341;
            _129.z += (_341 * 0.20000000298023223876953125);
            _129.w = 1.0;
        }
    }
    float _361 = _96._m64.z;
    float _364 = _96._m65.w;
    float _370;
    if (_361 > 0.0)
    {
        float _381 = 1.0 - ((_303 / _361) * (_303 / _361));
        float _479 = max(_381, 0.0);
        _370 = _479 * _364;
    }
    else
    {
        _370 = 0.0;
    }
    float _367 = _370;
    if (_367 > 0.0)
    {
        float _396 = _129.y + _367;
        float _483 = max(_396, 0.0);
        float _391 = _483;
        _129.y -= _391;
    }
    _403 = _129;
}

