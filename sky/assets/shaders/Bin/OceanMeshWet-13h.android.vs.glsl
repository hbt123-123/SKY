#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _42_44
{
    mat4 _m0;
    vec3 _m1;
    vec3 _m2;
    vec3 _m3;
    float _m4;
} _44;

layout(set = 0, binding = 2, std140) uniform _66_68
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
} _68;

layout(location = 0) in vec4 _51;
layout(location = 1) out vec3 _61;
layout(location = 0) out vec3 _76;
layout(location = 1) in vec4 _77;
layout(location = 4) out vec3 _85;
layout(location = 3) out vec3 _111;
layout(location = 2) out vec3 _124;

void main()
{
    vec3 _39 = (_44._m0 * vec4(_51.xyz, 1.0)).xyz;
    _61 = normalize(_39 - _68._m56.xyz);
    _76 = normalize((_77.xyz * 3.0) + _61);
    _85 = (_68._m51 * _68._m55.w) * 0.001000000047497451305389404296875;
    _111 = _39;
    vec4 _114 = _68._m8 * vec4(_111, 1.0);
    _124 = _68._m17 - _39;
    gl_Position = _114;
    vec2 _143 = _68._m32.xy * 2.0;
    vec2 _146 = _143 * _114.w;
    vec4 _148 = gl_Position;
    vec2 _150 = _148.xy + _146;
    float _154 = _150.x;
    gl_Position.x = _154;
    float _157 = _150.y;
    gl_Position.y = _157;
}

