#version 450

layout(set = 1, binding = 2, std140) uniform _102_104
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

layout(set = 1, binding = 0, std140) uniform _235_237
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
} _237;

layout(set = 1, binding = 3) uniform mediump sampler2D _91;

layout(location = 2) in vec3 _45;
layout(location = 1) in vec3 _63;
layout(location = 3) in vec2 _80;
layout(location = 0) in vec4 _86;
layout(location = 0) out vec4 _339;
layout(location = 1) out vec4 _351;

void main()
{
    float _42 = length(_45);
    vec3 _54;
    if (_42 > 9.9999999747524270787835121154785e-07)
    {
        _54 = normalize(_45);
    }
    else
    {
        _54 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _49 = _54;
    float _62 = length(_63);
    vec3 _69;
    if (_62 > 9.9999999747524270787835121154785e-07)
    {
        _69 = normalize(_63);
    }
    else
    {
        _69 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _66 = _69;
    vec2 _78 = _80;
    vec4 _84 = _86 * texture(_91, _78);
    vec4 _96 = _84;
    vec3 _98 = -_104._m44;
    vec3 _111 = _104._m47 * 1.0;
    vec3 _116 = (_104._m55.xyz * 1.0) * 3.1415927410125732421875;
    float _129 = dot(_66, _98);
    float _391 = max(_129, 0.0);
    float _125 = _391;
    vec3 _131 = _111 * _125;
    vec3 _135 = _49 + (_98 * 1.02499997615814208984375);
    float _141 = length(_135);
    vec3 _147;
    if (_141 > 9.9999999747524270787835121154785e-07)
    {
        _147 = _135 / vec3(_141);
    }
    else
    {
        _147 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _144 = _147;
    float _161 = 1.0 - dot(_49, _144);
    float _395 = clamp(_161, 0.0, 1.0);
    float _156 = _395;
    float _163 = mix(0.00999999977648258209228515625, 1.0, pow(clamp(_156, 0.0, 1.0), 5.0));
    float _170 = clamp(dot(_66, _144), 0.0, 1.0);
    float _181 = dot(_66, _98);
    float _399 = clamp(_181, 0.0, 1.0);
    vec3 _175 = (_104._m47 * _399) * vec3((4.0 * _163) * pow(max(_170, 9.9999999747524270787835121154785e-07), 2.0));
    float _194 = clamp(1.0 - dot(_49, _66), 0.0, 1.0);
    _175 += ((_116 * 0.5) * pow(max(_194, 9.9999999747524270787835121154785e-07), 8.0));
    _96 = vec4((_84.xyz * (_116 + _131)) + _175, _84.w);
    vec3 _225 = vec3(0.0);
    float _227 = dot(_84.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _243 = _237._m0.x > 9.9999999747524270787835121154785e-07;
    bool _251;
    if (_243)
    {
        _251 = _227 > (1.0 - _237._m0.x);
    }
    else
    {
        _251 = _243;
    }
    if (_251)
    {
        _225 = ((_84.xyz * (_237._m0.y + (_237._m1 * _104._m23))) * ((_227 - 1.0) + _237._m0.x)) / vec3(max(_237._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _225 *= (1.0 + _237._m0.z);
    vec4 _286 = _96;
    vec3 _288 = _286.xyz + _225;
    _96.x = _288.x;
    _96.y = _288.y;
    _96.z = _288.z;
    float _295 = dot(_66, _49);
    if (_237._m3 >= 0.0)
    {
        _96.w *= mix(1.0, pow(abs(_295), 3.0), _237._m3);
    }
    else
    {
        _96.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_295), 3.0), -_237._m3);
    }
    _96.w *= (1.0 - _237._m2);
    _339 = vec4(_96.xyz * _96.w, _96.w);
    float _359 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _360 = 256.0;
    float _403 = log(_359 * 20.0) * (_360 * 0.079292468726634979248046875);
    float _413 = max(_403, 0.0);
    float _404 = _413;
    _351 = vec4(_404 * _96.w, _96.w * 1000.0, 0.0, _96.w);
}

