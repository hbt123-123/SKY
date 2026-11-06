#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _44_46
{
    mat4 _m0;
    vec3 _m1;
    vec3 _m2;
    vec3 _m3;
    float _m4;
} _46;

layout(set = 0, binding = 2, std140) uniform _68_70
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
} _70;

layout(location = 0) in vec4 _53;
layout(location = 1) out vec3 _63;
layout(location = 0) out vec3 _78;
layout(location = 1) in vec4 _79;
layout(location = 4) out vec3 _87;
layout(location = 3) out vec3 _113;
layout(location = 2) out vec3 _126;

void main()
{
    vec3 _41 = (_46._m0 * vec4(_53.xyz, 1.0)).xyz;
    _63 = normalize(_41 - _70._m56.xyz);
    _78 = normalize((_79.xyz * 3.0) + _63);
    _87 = (_70._m51 * _70._m55.w) * 0.001000000047497451305389404296875;
    _113 = _41;
    vec4 _116 = _70._m8 * vec4(_113, 1.0);
    _126 = _70._m17 - _41;
    gl_Position = _116;
    vec2 _145 = _70._m32.xy * 2.0;
    vec2 _148 = _145 * _116.w;
    vec4 _150 = gl_Position;
    vec2 _152 = _150.xy + _148;
    float _156 = _152.x;
    gl_Position.x = _156;
    float _159 = _152.y;
    gl_Position.y = _159;
}

