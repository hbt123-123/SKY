#version 450

layout(set = 1, binding = 2, std140) uniform _85_87
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

layout(set = 1, binding = 0, std140) uniform _218_220
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
} _220;

layout(set = 1, binding = 3) uniform mediump sampler2D _74;

layout(location = 2) in vec3 _28;
layout(location = 1) in vec3 _46;
layout(location = 3) in vec2 _63;
layout(location = 0) in vec4 _69;
layout(location = 0) out vec4 _322;
layout(location = 1) out vec4 _343;

void main()
{
    float _25 = length(_28);
    vec3 _37;
    if (_25 > 9.9999999747524270787835121154785e-07)
    {
        _37 = normalize(_28);
    }
    else
    {
        _37 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _32 = _37;
    float _45 = length(_46);
    vec3 _52;
    if (_45 > 9.9999999747524270787835121154785e-07)
    {
        _52 = normalize(_46);
    }
    else
    {
        _52 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _49 = _52;
    vec2 _61 = _63;
    vec4 _67 = _69 * texture(_74, _61);
    vec4 _79 = _67;
    vec3 _81 = -_87._m44;
    vec3 _94 = _87._m47 * 1.0;
    vec3 _99 = (_87._m55.xyz * 1.0) * 3.1415927410125732421875;
    float _112 = dot(_49, _81);
    float _344 = max(_112, 0.0);
    float _108 = _344;
    vec3 _114 = _94 * _108;
    vec3 _118 = _32 + (_81 * 1.02499997615814208984375);
    float _124 = length(_118);
    vec3 _130;
    if (_124 > 9.9999999747524270787835121154785e-07)
    {
        _130 = _118 / vec3(_124);
    }
    else
    {
        _130 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _127 = _130;
    float _144 = 1.0 - dot(_32, _127);
    float _348 = clamp(_144, 0.0, 1.0);
    float _139 = _348;
    float _146 = mix(0.00999999977648258209228515625, 1.0, pow(clamp(_139, 0.0, 1.0), 5.0));
    float _153 = clamp(dot(_49, _127), 0.0, 1.0);
    float _164 = dot(_49, _81);
    float _352 = clamp(_164, 0.0, 1.0);
    vec3 _158 = (_87._m47 * _352) * vec3((4.0 * _146) * pow(max(_153, 9.9999999747524270787835121154785e-07), 2.0));
    float _177 = clamp(1.0 - dot(_32, _49), 0.0, 1.0);
    _158 += ((_99 * 0.5) * pow(max(_177, 9.9999999747524270787835121154785e-07), 8.0));
    _79 = vec4((_67.xyz * (_99 + _114)) + _158, _67.w);
    vec3 _208 = vec3(0.0);
    float _210 = dot(_67.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _226 = _220._m0.x > 9.9999999747524270787835121154785e-07;
    bool _234;
    if (_226)
    {
        _234 = _210 > (1.0 - _220._m0.x);
    }
    else
    {
        _234 = _226;
    }
    if (_234)
    {
        _208 = ((_67.xyz * (_220._m0.y + (_220._m1 * _87._m23))) * ((_210 - 1.0) + _220._m0.x)) / vec3(max(_220._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _208 *= (1.0 + _220._m0.z);
    vec4 _269 = _79;
    vec3 _271 = _269.xyz + _208;
    _79.x = _271.x;
    _79.y = _271.y;
    _79.z = _271.z;
    float _278 = dot(_49, _32);
    if (_220._m3 >= 0.0)
    {
        _79.w *= mix(1.0, pow(abs(_278), 3.0), _220._m3);
    }
    else
    {
        _79.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_278), 3.0), -_220._m3);
    }
    _79.w *= (1.0 - _220._m2);
    _322 = _79;
}

