#version 450

layout(set = 1, binding = 2, std140) uniform _72_74
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
} _74;

layout(set = 1, binding = 0, std140) uniform _205_207
{
    vec4 _m0;
    float _m1;
} _207;

layout(location = 2) in vec3 _28;
layout(location = 1) in vec3 _46;
layout(location = 0) in vec4 _63;
layout(location = 0) out vec4 _266;

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
    vec4 _61 = _63;
    vec4 _65 = _61;
    vec3 _67 = -_74._m44;
    vec3 _81 = _74._m47 * 1.0;
    vec3 _86 = (_74._m55.xyz * 1.0) * 3.1415927410125732421875;
    float _99 = dot(_49, _67);
    float _294 = max(_99, 0.0);
    float _95 = _294;
    vec3 _101 = _81 * _95;
    vec3 _105 = _32 + (_67 * 1.02499997615814208984375);
    float _111 = length(_105);
    vec3 _117;
    if (_111 > 9.9999999747524270787835121154785e-07)
    {
        _117 = _105 / vec3(_111);
    }
    else
    {
        _117 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _114 = _117;
    float _131 = 1.0 - dot(_32, _114);
    float _298 = clamp(_131, 0.0, 1.0);
    float _126 = _298;
    float _133 = mix(0.00999999977648258209228515625, 1.0, pow(clamp(_126, 0.0, 1.0), 5.0));
    float _140 = clamp(dot(_49, _114), 0.0, 1.0);
    float _151 = dot(_49, _67);
    float _302 = clamp(_151, 0.0, 1.0);
    vec3 _145 = (_74._m47 * _302) * vec3((4.0 * _133) * pow(max(_140, 9.9999999747524270787835121154785e-07), 2.0));
    float _164 = clamp(1.0 - dot(_32, _49), 0.0, 1.0);
    _145 += ((_86 * 0.5) * pow(max(_164, 9.9999999747524270787835121154785e-07), 8.0));
    _65 = vec4((_61.xyz * (_86 + _101)) + _145, _61.w);
    vec3 _195 = vec3(0.0);
    float _197 = dot(_61.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _213 = _207._m0.x > 9.9999999747524270787835121154785e-07;
    bool _221;
    if (_213)
    {
        _221 = _197 > (1.0 - _207._m0.x);
    }
    else
    {
        _221 = _213;
    }
    if (_221)
    {
        _195 = ((_61.xyz * (_207._m0.y + (_207._m1 * _74._m23))) * ((_197 - 1.0) + _207._m0.x)) / vec3(max(_207._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _195 *= (1.0 + _207._m0.z);
    vec4 _256 = _65;
    vec3 _258 = _256.xyz + _195;
    _65.x = _258.x;
    _65.y = _258.y;
    _65.z = _258.z;
    _266 = vec4(_65.xyz, 0.0);
}

