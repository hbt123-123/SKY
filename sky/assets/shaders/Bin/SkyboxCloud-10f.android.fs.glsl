#version 450

layout(set = 1, binding = 2, std140) uniform _25_27
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
} _27;

layout(set = 1, binding = 0, std140) uniform _115_117
{
    float _m0;
    float _m1;
} _117;

layout(set = 1, binding = 3) uniform mediump sampler3D _49;
layout(set = 1, binding = 4) uniform mediump sampler2D _80;

layout(location = 0) in vec4 _75;
layout(location = 1) in vec2 _83;
layout(location = 2) in vec3 _89;
layout(location = 0) out vec4 _142;

void main()
{
    float _61 = 1.60000002384185791015625;
    vec4 _73 = _75 * texture(_80, _83);
    vec3 _103 = _89 + ((vec3(-14.38000011444091796875, 3.367000102996826171875, 20.936000823974609375) * _27._m20) * 20.0);
    float _104 = 9.9999997473787516355514526367188e-05;
    _104 *= 0.5;
    vec3 _175 = (((_103 - _27._m80.xyz) * _104) * 0.015625) * 6.0;
    float _176 = _27._m79.w * textureLod(_49, _175, 0.0).x;
    float _87 = _176 / _27._m79.w;
    _87 *= _87;
    _87 *= _61;
    vec4 _121 = _73;
    vec3 _123 = _121.xyz * _117._m0;
    _73.x = _123.x;
    _73.y = _123.y;
    _73.z = _123.z;
    _73.w *= (_117._m1 * _87);
    _142 = vec4(_73.xyz, _73.w);
}

