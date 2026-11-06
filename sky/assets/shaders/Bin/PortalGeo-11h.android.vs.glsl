#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _12_14
{
    mat4 _m0;
    float _m1;
} _14;

layout(set = 0, binding = 2, std140) uniform _36_38
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
} _38;

layout(location = 2) out vec3 _9;
layout(location = 0) in vec3 _21;
layout(location = 0) out vec4 _69;
layout(location = 1) in vec2 _71;
layout(location = 1) out vec3 _142;

void main()
{
    _9 = (_14._m0 * vec4(_21, 1.0)).xyz;
    vec4 _46 = vec4(_9, 1.0);
    vec4 _47 = _38._m8 * _46;
    gl_Position = _47;
    vec2 _51 = _38._m63.xy * 0.1500000059604644775390625;
    float _60 = _14._m1 * _38._m63.x;
    _69.x = _71.x;
    _69.y = _71.y;
    vec2 _98 = (vec2(fract(_60), floor(_60) * _38._m63.y) + _51) + ((_38._m63.xy - (_51 * 2.0)) * _71);
    _69.z = _98.x;
    _69.w = _98.y;
    vec3 _106 = _14._m0[3].xyz;
    vec3 _111 = normalize(_38._m17 - _106);
    vec3 _119 = _14._m0[2].xyz;
    vec3 _124 = _14._m0[0].xyz;
    float _128 = length(_119);
    float _131 = length(_124);
    _119 /= vec3(_128);
    _124 /= vec3(_131);
    vec2 _151 = vec2(dot(_124, _111), dot(_119, _111)) * (-0.0500000007450580596923828125);
    _142.x = _151.x;
    _142.y = _151.y;
    _142.z = _128 / _131;
}

