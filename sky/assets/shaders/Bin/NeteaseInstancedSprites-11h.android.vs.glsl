#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _39_41
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
} _41;

layout(set = 0, binding = 0, std140) uniform _134_136
{
    vec2 _m0;
    vec2 _m1;
    vec2 _m2;
    float _m3;
} _136;

layout(location = 1) in vec3 _22;
layout(location = 2) in vec2 _28;
layout(location = 0) in vec2 _79;
layout(location = 0) out vec4 _121;
layout(location = 4) in vec4 _123;
layout(location = 1) out vec4 _133;
layout(location = 3) in vec2 _140;

void main()
{
    vec3 _20 = _22;
    vec2 _26 = _28;
    float _33 = distance(_20, _41._m17);
    float _48 = 0.014999999664723873138427734375 * _33;
    float _52 = (1.0 * min(_33, 10.0)) * 0.100000001490116119384765625;
    float _63 = _33 / 100.0;
    float _165 = clamp(_63, 0.0, 1.0);
    float _59 = _165;
    float _65 = _26.x * mix(_52, _48, _59);
    float _74 = _26.y;
    vec2 _78 = _79;
    _20 += (((_41._m12[0].xyz * _78.x) * _65) + ((_41._m12[1].xyz * (_78.y + _74)) * _65));
    vec4 _117 = vec4(_20, 1.0);
    vec4 _118 = _41._m8 * _117;
    gl_Position = _118;
    _121 = _123;
    vec2 _125 = (_79 * vec2(0.5, -0.5)) + vec2(0.5);
    vec2 _151 = _136._m0 + ((_140 + (_125 * _136._m2)) * _136._m1);
    _133.x = _151.x;
    _133.y = _151.y;
}

