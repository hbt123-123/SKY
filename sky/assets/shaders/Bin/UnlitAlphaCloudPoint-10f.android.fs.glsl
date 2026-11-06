#version 450

layout(set = 1, binding = 0, std140) uniform _75_77
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
    float _m4;
} _77;

layout(set = 1, binding = 2, std140) uniform _169_171
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
} _171;

layout(set = 1, binding = 4) uniform mediump sampler2D _64;
layout(set = 1, binding = 3) uniform mediump sampler2D _128;

layout(location = 4) in float _48;
layout(location = 2) in vec3 _89;
layout(location = 1) in vec3 _107;
layout(location = 3) in vec2 _121;
layout(location = 0) in vec4 _126;
layout(location = 0) out vec4 _255;
layout(location = 1) out vec4 _267;

void main()
{
    float _86 = length(_89);
    vec3 _98;
    if (_86 > 9.9999999747524270787835121154785e-07)
    {
        _98 = normalize(_89);
    }
    else
    {
        _98 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _93 = _98;
    float _106 = length(_107);
    vec3 _113;
    if (_106 > 9.9999999747524270787835121154785e-07)
    {
        _113 = normalize(_107);
    }
    else
    {
        _113 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _110 = _113;
    vec2 _120 = _121;
    vec4 _124 = _126 * texture(_128, _120);
    vec4 _133 = _124;
    vec3 _135 = vec3(0.0);
    float _137 = dot(_124.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _148 = _77._m0.x > 9.9999999747524270787835121154785e-07;
    bool _156;
    if (_148)
    {
        _156 = _137 > (1.0 - _77._m0.x);
    }
    else
    {
        _156 = _148;
    }
    if (_156)
    {
        _135 = ((_124.xyz * (_77._m0.y + (_77._m1 * _171._m23))) * ((_137 - 1.0) + _77._m0.x)) / vec3(max(_77._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _135 *= (1.0 + _77._m0.z);
    vec4 _196 = _133;
    vec3 _198 = _196.xyz + _135;
    _133.x = _198.x;
    _133.y = _198.y;
    _133.z = _198.z;
    float _205 = dot(_110, _93);
    if (_77._m3 >= 0.0)
    {
        _133.w *= mix(1.0, pow(abs(_205), 3.0), _77._m3);
    }
    else
    {
        _133.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_205), 3.0), -_77._m3);
    }
    _133.w *= (1.0 - _77._m2);
    float _304 = _48;
    vec2 _325 = gl_PointCoord;
    vec2 _305 = (_325 * vec2(1.0, 0.25)) + vec2(0.0, _304);
    float _306 = texture(_64, _305).x;
    float _307 = (_306 * _306) * _77._m4;
    _133.w *= _307;
    _255 = vec4(_133.xyz * _133.w, _133.w);
    float _274 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _275 = 256.0;
    float _328 = log(_274 * 20.0) * (_275 * 0.079292468726634979248046875);
    float _338 = max(_328, 0.0);
    float _329 = _338;
    _267 = vec4(_329 * _133.w, _133.w * 1000.0, 0.0, _133.w);
}

