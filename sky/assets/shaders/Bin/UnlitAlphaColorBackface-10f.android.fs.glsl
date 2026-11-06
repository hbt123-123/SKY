#version 450

layout(set = 1, binding = 0, std140) uniform _101_103
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
} _103;

layout(set = 1, binding = 2, std140) uniform _132_134
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
} _134;

layout(set = 1, binding = 3) uniform mediump sampler2D _84;

layout(location = 2) in vec3 _37;
layout(location = 1) in vec3 _56;
layout(location = 3) in vec2 _73;
layout(location = 0) in vec4 _79;
layout(location = 0) out vec4 _213;
layout(location = 1) out vec4 _225;

void main()
{
    float _34 = length(_37);
    vec3 _46;
    if (_34 > 9.9999999747524270787835121154785e-07)
    {
        _46 = normalize(_37);
    }
    else
    {
        _46 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _41 = _46;
    float _55 = length(_56);
    vec3 _62;
    if (_55 > 9.9999999747524270787835121154785e-07)
    {
        _62 = normalize(_56);
    }
    else
    {
        _62 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _59 = _62;
    vec2 _71 = _73;
    vec4 _77 = _79 * texture(_84, _71);
    vec4 _89 = _77;
    vec3 _91 = vec3(0.0);
    float _93 = dot(_77.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _111 = _103._m0.x > 9.9999999747524270787835121154785e-07;
    bool _119;
    if (_111)
    {
        _119 = _93 > (1.0 - _103._m0.x);
    }
    else
    {
        _119 = _111;
    }
    if (_119)
    {
        _91 = ((_77.xyz * (_103._m0.y + (_103._m1 * _134._m23))) * ((_93 - 1.0) + _103._m0.x)) / vec3(max(_103._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _91 *= (1.0 + _103._m0.z);
    vec4 _159 = _89;
    vec3 _161 = _159.xyz + _91;
    _89.x = _161.x;
    _89.y = _161.y;
    _89.z = _161.z;
    float _168 = dot(_59, _41);
    if (_103._m3 >= 0.0)
    {
        _89.w *= mix(1.0, pow(abs(_168), 3.0), _103._m3);
    }
    else
    {
        _89.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_168), 3.0), -_103._m3);
    }
    _89.w *= (1.0 - _103._m2);
    _213 = vec4(_89.xyz * _89.w, _89.w);
    float _233 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _234 = 256.0;
    float _263 = log(_233 * 20.0) * (_234 * 0.079292468726634979248046875);
    float _273 = max(_263, 0.0);
    float _264 = _273;
    _225 = vec4(_264 * _89.w, _89.w * 1000.0, 0.0, _89.w);
}

