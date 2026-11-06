#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _59_61
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
} _61;

layout(set = 0, binding = 1, std140) uniform _94_96
{
    vec4 _m0;
    vec2 _m1;
} _96;

layout(location = 0) out vec2 _43;
layout(location = 1) out vec4 _55;

void main()
{
    int _8 = gl_VertexIndex;
    bool _20 = _8 == 0;
    float _23 = _20 ? (-3.0) : 1.0;
    gl_Position.x = _23;
    bool _30 = _8 == 2;
    float _33 = _30 ? 3.0 : (-1.0);
    gl_Position.y = _33;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    _43 = (gl_Position.xy * vec2(0.5)) + vec2(0.5);
    vec2 _53 = _43;
    vec3 _80 = (_61._m38 + (_61._m34 * _53.x)) + (_61._m36 * _53.y);
    _55.x = _80.x;
    _55.y = _80.y;
    _55.z = _80.z;
    _55.w = (0.5 * length(_61._m34 + _61._m36)) / length(_96._m0.xy);
}

