#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _95_97
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
} _97;

layout(set = 0, binding = 0, std140) uniform _141_143
{
    mat4 _m0;
    vec4 _m1;
    vec4 _m2;
    vec4 _m3;
    vec3 _m4;
    float _m5;
    float _m6;
    float _m7;
} _143;

layout(set = 0, binding = 3) uniform mediump sampler2D _160;

layout(location = 0) in vec4 _148;
layout(location = 1) in vec4 _161;

void main()
{
    vec4 _140 = _143._m0 * _148;
    vec3 _163 = _140.xyz;
    float _166 = _161.w;
    float _171 = _143._m6;
    float _277 = 0.039999999105930328369140625;
    vec2 _278 = fract(((_163.xz * _277) + _97._m68.xz) + vec2(_163.y * 0.0500000007450580596923828125));
    vec4 _279 = textureLod(_160, _278, 0.0);
    vec2 _280 = smoothstep(vec2(0.0), vec2(1.0), _279.xy) - vec2(0.5);
    float _281 = min(0.4000000059604644775390625, 1.0 - _166);
    _281 = pow(_281, 1.7000000476837158203125) * _171;
    vec2 _282 = _280 * _281;
    vec4 _176 = _140;
    vec2 _178 = _176.xz + _282;
    _140.x = _178.x;
    _140.z = _178.y;
    bool _187 = _143._m7 != 0.0;
    if (_187)
    {
        _140.y = _97._m96 - _140.y;
    }
    vec4 _209 = _97._m8 * _140;
    gl_Position = _209;
}

