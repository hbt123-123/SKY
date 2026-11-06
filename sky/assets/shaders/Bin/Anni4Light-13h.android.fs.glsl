#version 450

layout(set = 1, binding = 0, std140) uniform _115_117
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
    float _m4;
    float _m5;
} _117;

layout(set = 1, binding = 2, std140) uniform _146_148
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
} _148;

layout(set = 1, binding = 1, std140) uniform _230_232
{
    vec4 _m0;
    vec2 _m1;
} _232;

layout(set = 1, binding = 3) uniform mediump sampler2D _98;
layout(set = 1, binding = 4) uniform sampler2D _247;

layout(location = 2) in vec3 _52;
layout(location = 1) in vec3 _70;
layout(location = 3) in vec2 _87;
layout(location = 0) in vec4 _93;
layout(location = 0) out vec4 _296;
layout(location = 1) out vec4 _308;

void main()
{
    float _49 = length(_52);
    vec3 _61;
    if (_49 > 9.9999999747524270787835121154785e-07)
    {
        _61 = normalize(_52);
    }
    else
    {
        _61 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _56 = _61;
    float _69 = length(_70);
    vec3 _76;
    if (_69 > 9.9999999747524270787835121154785e-07)
    {
        _76 = normalize(_70);
    }
    else
    {
        _76 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _73 = _76;
    vec2 _85 = _87;
    vec4 _91 = _93 * texture(_98, _85);
    vec4 _103 = _91;
    vec3 _105 = vec3(0.0);
    float _107 = dot(_91.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _125 = _117._m0.x > 9.9999999747524270787835121154785e-07;
    bool _133;
    if (_125)
    {
        _133 = _107 > (1.0 - _117._m0.x);
    }
    else
    {
        _133 = _125;
    }
    if (_133)
    {
        _105 = ((_91.xyz * (_117._m0.y + (_117._m1 * _148._m23))) * ((_107 - 1.0) + _117._m0.x)) / vec3(max(_117._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _105 *= (1.0 + _117._m0.z);
    vec4 _173 = _103;
    vec3 _175 = _173.xyz + _105;
    _103.x = _175.x;
    _103.y = _175.y;
    _103.z = _175.z;
    float _182 = dot(_73, _56);
    if (_117._m3 >= 0.0)
    {
        _103.w *= mix(1.0, pow(abs(_182), 3.0), _117._m3);
    }
    else
    {
        _103.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_182), 3.0), -_117._m3);
    }
    _103.w *= (1.0 - _117._m2);
    vec2 _226 = gl_FragCoord.xy * _232._m0.zw;
    float _238 = 1.0 / gl_FragCoord.w;
    float _254 = max(textureLod(_247, _226, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _343 = 1.0 / _254;
    float _243 = _148._m24 * _343;
    float _266 = abs(_243 - _238) / (1.0 + _117._m4);
    float _347 = clamp(_266, 0.0, 1.0);
    _103.w *= _347;
    float _274 = _238;
    float _351 = clamp(_274, 0.0, 1.0);
    _103.w *= _351;
    float _279 = clamp(mix(1.0, 0.0, _85.y), 0.0, 1.0);
    _103.w *= pow(max(_279, 9.9999999747524270787835121154785e-07), abs(_117._m5));
    _296 = vec4(_103.xyz * _103.w, _103.w);
    float _314 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _315 = 256.0;
    float _355 = log(_314 * 20.0) * (_315 * 0.079292468726634979248046875);
    float _365 = max(_355, 0.0);
    float _356 = _365;
    _308 = vec4(_356 * _103.w, _103.w * 1000.0, 0.0, _103.w);
}

