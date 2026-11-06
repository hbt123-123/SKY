#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _74_76
{
    mat4 _m0;
    vec3 _m1;
    float _m2;
    vec4 _m3;
    vec4 _m4;
    vec4 _m5;
    vec4 _m6;
} _76;

layout(set = 0, binding = 2, std140) uniform _94_96
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
} _96;

layout(location = 0) in vec3 _81;
layout(location = 2) out vec3 _90;
layout(location = 1) out vec3 _103;
layout(location = 1) in vec3 _104;
layout(location = 0) out vec4 _112;
layout(location = 2) in vec4 _115;
layout(location = 3) out vec4 _124;
layout(location = 3) in vec4 _125;

void main()
{
    vec3 _73 = (_76._m0 * vec4(_81, 1.0)).xyz;
    _90 = _96._m17 - _73;
    mat4 _105 = _76._m0;
    vec3 _108 = _104;
    mat4 _206 = _105;
    mat3 _215 = mat3(vec3(cross(_206[1].xyz, _206[2].xyz)), vec3(cross(_206[2].xyz, _206[0].xyz)), vec3(cross(_206[0].xyz, _206[1].xyz)));
    vec3 _207 = normalize(_215 * _108);
    _103 = _207;
    _112 = vec4(1.0, 1.0, 1.0, _115.w);
    vec2 _143 = (_125.xy + _76._m3.xy) + (_76._m4.xy * _96._m20);
    _124.x = _143.x;
    _124.y = _143.y;
    vec2 _165 = (_125.zw + _76._m5.xy) + (_76._m6.xy * _96._m20);
    _124.z = _165.x;
    _124.w = _165.y;
    vec3 _171 = _73;
    if (_76._m2 != 0.0)
    {
        _171.y = _96._m96 - _171.y;
    }
    vec4 _197 = vec4(_171, 1.0);
    vec4 _198 = _96._m8 * _197;
    gl_Position = _198;
}

