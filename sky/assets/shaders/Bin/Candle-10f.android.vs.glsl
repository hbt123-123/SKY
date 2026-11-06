#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _75_77
{
    mat4 _m0;
    vec4 _m1;
} _77;

layout(set = 0, binding = 2, std140) uniform _104_106
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
} _106;

layout(location = 0) out vec4 _74;
layout(location = 0) in vec3 _82;
layout(location = 1) out vec3 _90;
layout(location = 2) in vec3 _91;
layout(location = 2) out vec4 _113;
layout(location = 1) in vec4 _115;
layout(location = 4) out vec4 _126;
layout(location = 3) out vec4 _148;

void main()
{
    _74 = _77._m0 * vec4(_82, 1.0);
    mat4 _92 = _77._m0;
    vec3 _95 = _91;
    mat4 _179 = _92;
    mat3 _188 = mat3(vec3(cross(_179[1].xyz, _179[2].xyz)), vec3(cross(_179[2].xyz, _179[0].xyz)), vec3(cross(_179[0].xyz, _179[1].xyz)));
    vec3 _180 = normalize(_188 * _95);
    _90 = _180;
    vec4 _111 = _106._m8 * _74;
    gl_Position = _111;
    _113 = _115;
    _113.z = (_113.z * 2.007874011993408203125) - 1.007874011993408203125;
    vec3 _139 = normalize(_106._m17 - (_74.xyz / vec3(_74.w)));
    _126.x = _139.x;
    _126.y = _139.y;
    _126.z = _139.z;
    _148 = _77._m1;
    _126.w = length(_82.xz) * 30.0;
}

