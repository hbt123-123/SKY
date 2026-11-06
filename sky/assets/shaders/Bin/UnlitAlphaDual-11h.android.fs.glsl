#version 450

layout(set = 1, binding = 0, std140) uniform _112_114
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
} _114;

layout(set = 1, binding = 2, std140) uniform _142_144
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
} _144;

layout(set = 1, binding = 3) uniform mediump sampler2D _81;
layout(set = 1, binding = 4) uniform mediump sampler2D _88;

layout(location = 2) in vec3 _37;
layout(location = 1) in vec3 _56;
layout(location = 3) in vec4 _73;
layout(location = 0) in vec4 _76;
layout(location = 0) out vec4 _222;
layout(location = 1) out vec4 _234;

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
    vec4 _71 = _73;
    vec4 _75 = _76 * texture(_81, _71.xy);
    _75.w *= texture(_88, _71.zw).w;
    vec4 _100 = _75;
    vec3 _102 = vec3(0.0);
    float _104 = dot(_75.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _121 = _114._m0.x > 9.9999999747524270787835121154785e-07;
    bool _129;
    if (_121)
    {
        _129 = _104 > (1.0 - _114._m0.x);
    }
    else
    {
        _129 = _121;
    }
    if (_129)
    {
        _102 = ((_75.xyz * (_114._m0.y + (_114._m1 * _144._m23))) * ((_104 - 1.0) + _114._m0.x)) / vec3(max(_114._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _102 *= (1.0 + _114._m0.z);
    vec4 _169 = _100;
    vec3 _171 = _169.xyz + _102;
    _100.x = _171.x;
    _100.y = _171.y;
    _100.z = _171.z;
    float _178 = dot(_59, _41);
    if (_114._m3 >= 0.0)
    {
        _100.w *= mix(1.0, pow(abs(_178), 3.0), _114._m3);
    }
    else
    {
        _100.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_178), 3.0), -_114._m3);
    }
    _100.w *= (1.0 - _114._m2);
    _222 = vec4(_100.xyz * _100.w, _100.w);
    float _242 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _243 = 256.0;
    float _274 = log(_242 * 20.0) * (_243 * 0.079292468726634979248046875);
    float _284 = max(_274, 0.0);
    float _275 = _284;
    _234 = vec4(_275 * _100.w, _100.w * 1000.0, 0.0, _100.w);
}

