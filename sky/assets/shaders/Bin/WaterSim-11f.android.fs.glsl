#version 450

layout(set = 1, binding = 2, std140) uniform _97_99
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
} _99;

layout(set = 1, binding = 0, std140) uniform _372_374
{
    vec4 _m0[8];
    vec4 _m1[8];
    vec4 _m2[4];
    vec4 _m3[4];
    float _m4;
    float _m5[3];
} _374;

layout(set = 1, binding = 3) uniform mediump sampler2D _136;

layout(location = 0) in vec2 _83;
layout(location = 1) out vec4 _225;
layout(location = 0) out vec4 _607;

void main()
{
    vec4 _81;
    _81.x = _83.x;
    _81.y = _83.y;
    vec4 _92 = _81;
    vec2 _112 = (_92.xy / vec2(_99._m64.w)) + _99._m64.xy;
    _81.z = _112.x;
    _81.w = _112.y;
    float _118 = min(0.0500000007450580596923828125, _99._m22);
    vec2 _124 = _81.xy + _99._m65.xy;
    vec4 _132 = textureLodOffset(_136, _124, 0.0, ivec2(0));
    vec2 _143 = textureLodOffset(_136, _124, 0.0, ivec2(0, -1)).xw;
    vec2 _150 = textureLodOffset(_136, _124, 0.0, ivec2(1, 0)).xw;
    vec2 _157 = textureLodOffset(_136, _124, 0.0, ivec2(0, 1)).xw;
    vec2 _163 = textureLodOffset(_136, _124, 0.0, ivec2(-1, 0)).xw;
    if (isnan(_132.x))
    {
        _132.x = 0.0;
        _132.y = 0.0;
        _132.z = 0.0;
        _132.w = 0.0;
        _163.x = 0.0;
        _143.x = 0.0;
    }
    float _180 = (((_143.x - _132.x) + (_157.x - _132.x)) + (_163.x - _132.x)) + (_150.x - _132.x);
    _132.w = max(max(max(max(_143.y, _157.y), _163.y), _150.y) * 0.949999988079071044921875, _132.w) * (1.0 - _118);
    vec3 _242 = clamp(vec3(_163.x - _132.x, _143.x - _132.x, _132.x), vec3(-1.0), vec3(1.0));
    _225.x = _242.x;
    _225.y = _242.y;
    _225.z = _242.z;
    _225.w = _132.w;
    vec3 _254 = vec3(1.0) - (vec3(0.100000001490116119384765625, 0.00999999977648258209228515625, 1.0) * _118);
    vec4 _262 = _132;
    vec3 _264 = _262.xyz * _254;
    _132.x = _264.x;
    _132.y = _264.y;
    _132.z = _264.z;
    _132.z += (_180 * (50.0 * _118));
    float _283 = abs(_132.z);
    float _619 = min(_283, 1.0);
    _132.z = _619 * sign(_132.z);
    _132.x += (_132.z * _118);
    float _298 = _99._m65.z;
    bool _302 = _298 == 0.00012500000593718141317367553710938;
    vec2 _308 = _81.zw;
    vec2 _311 = _99._m66.xy;
    vec2 _315 = _99._m66.zw;
    vec2 _623 = _315 - _311;
    vec2 _624 = _308 - _311;
    float _625 = dot(_624, _623);
    float _626 = dot(_623, _623);
    float _627 = _625 / _626;
    vec2 _628 = _311 + (_623 * _627);
    _628 = mix(_628, _311, bvec2(_625 <= 0.0));
    _628 = mix(_628, _315, bvec2(_626 <= _625));
    float _629 = distance(_308, _628);
    float _306 = _629;
    float _325 = 1.0 - (_306 / 0.25);
    float _667 = max(_325, 0.0);
    float _320 = _667;
    if (_302)
    {
        if (_320 > 0.0)
        {
            _132.w = 1.0;
        }
    }
    else
    {
        float _336 = _320 * _298;
        if (_336 > 0.0)
        {
            float _349 = _132.x + _336;
            float _671 = max(_349, 0.0);
            float _344 = _671;
            _132.x -= _344;
            _132.z += (_344 * 0.20000000298023223876953125);
            _132.w = 1.0;
        }
    }
    bool _364 = _374._m4 > 0.0;
    if (_364)
    {
        vec2 _395[16];
        vec2 _412[16];
        for (int _383 = 0; _383 < 8; _383++)
        {
            _395[_383 * 2] = _374._m0[_383].xy;
            _395[(_383 * 2) + 1] = _374._m0[_383].zw;
            _412[_383 * 2] = _374._m1[_383].xy;
            _412[(_383 * 2) + 1] = _374._m1[_383].zw;
        }
        float _440[16];
        float _469[16];
        for (int _430 = 0; _430 < 4; _430++)
        {
            _440[_430 * 4] = _374._m2[_430].x;
            _440[(_430 * 4) + 1] = _374._m2[_430].y;
            _440[(_430 * 4) + 2] = _374._m2[_430].z;
            _440[(_430 * 4) + 3] = _374._m2[_430].w;
            _469[_430 * 4] = _374._m3[_430].x;
            _469[(_430 * 4) + 1] = _374._m3[_430].y;
            _469[(_430 * 4) + 2] = _374._m3[_430].z;
            _469[(_430 * 4) + 3] = _374._m3[_430].w;
        }
        float _530;
        for (int _499 = 0; _499 < int(_374._m4); _499++)
        {
            vec2 _513 = _81.zw;
            vec2 _516 = _395[_499];
            vec2 _519 = _412[_499];
            vec2 _675 = _519 - _516;
            vec2 _676 = _513 - _516;
            float _677 = dot(_676, _675);
            float _678 = dot(_675, _675);
            float _679 = _677 / _678;
            vec2 _680 = _516 + (_675 * _679);
            _680 = mix(_680, _516, bvec2(_677 <= 0.0));
            _680 = mix(_680, _519, bvec2(_678 <= _677));
            float _681 = distance(_513, _680);
            float _510 = _681;
            float _523 = _440[_499];
            if (_523 > 0.0)
            {
                float _539 = 1.0 - pow(_510 / _523, 10.0);
                float _719 = max(_539, 0.0);
                _530 = _719 * _469[_499];
            }
            else
            {
                _530 = 0.0;
            }
            float _527 = _530;
            if (_527 > 0.0)
            {
                float _556 = _132.y + _527;
                float _723 = max(_556, 0.0);
                float _551 = _723;
                _132.y -= _551;
            }
        }
    }
    float _565 = _99._m64.z;
    float _568 = _99._m65.w;
    float _574;
    if (_565 > 0.0)
    {
        float _585 = 1.0 - ((_306 / _565) * (_306 / _565));
        float _727 = max(_585, 0.0);
        _574 = _727 * _568;
    }
    else
    {
        _574 = 0.0;
    }
    float _571 = _574;
    if (_571 > 0.0)
    {
        float _600 = _132.y + _571;
        float _731 = max(_600, 0.0);
        float _595 = _731;
        _132.y -= _595;
    }
    _607 = _132;
}

