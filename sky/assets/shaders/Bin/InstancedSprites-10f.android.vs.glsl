#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _27_29
{
    vec2 _m0;
    vec2 _m1;
    vec2 _m2;
    float _m3;
} _29;

layout(set = 0, binding = 2, std140) uniform _63_65
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
} _65;

layout(location = 6) in vec3 _22;
layout(location = 1) in vec3 _24;
layout(location = 8) in vec2 _40;
layout(location = 2) in vec2 _42;
layout(location = 0) in vec2 _102;
layout(location = 0) out vec4 _144;
layout(location = 4) in vec4 _146;
layout(location = 1) out vec4 _156;
layout(location = 3) in vec2 _160;

void main()
{
    vec3 _20 = mix(_22, _24, vec3(_29._m3));
    vec2 _38 = mix(_40, _42, vec2(_29._m3));
    float _57 = distance(_20, _65._m17);
    float _71 = 0.014999999664723873138427734375 * _57;
    float _75 = (1.0 * min(_57, 10.0)) * 0.100000001490116119384765625;
    float _86 = _57 / 100.0;
    float _183 = clamp(_86, 0.0, 1.0);
    float _82 = _183;
    float _88 = _38.x * mix(_75, _71, _82);
    float _97 = _38.y;
    vec2 _101 = _102;
    _20 += (((_65._m12[0].xyz * _101.x) * _88) + ((_65._m12[1].xyz * (_101.y + _97)) * _88));
    vec4 _140 = vec4(_20, 1.0);
    vec4 _141 = _65._m8 * _140;
    gl_Position = _141;
    _144 = _146;
    vec2 _148 = (_102 * vec2(0.5, -0.5)) + vec2(0.5);
    vec2 _171 = _29._m0 + ((_160 + (_148 * _29._m2)) * _29._m1);
    _156.x = _171.x;
    _156.y = _171.y;
}

