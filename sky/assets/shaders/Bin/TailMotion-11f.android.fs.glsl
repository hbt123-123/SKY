#version 450

layout(set = 1, binding = 1, std140) uniform _15_17
{
    vec4 _m0;
    vec2 _m1;
} _17;

layout(set = 1, binding = 2, std140) uniform _31_33
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
} _33;

layout(location = 2) in vec3 _39;
layout(location = 0) out vec4 _85;
layout(location = 1) in vec4 _89;

void main()
{
    vec2 _9 = gl_FragCoord.xy * _17._m0.zw;
    vec4 _26 = _33._m10 * vec4(_39, 1.0);
    _26 /= vec4(_26.w);
    _26 = (_26 * 0.5) + vec4(0.5);
    vec2 _59 = _9 - _26.xy;
    _59 = clamp(_59, vec2(-0.5), vec2(0.5));
    vec2 _69 = _59 * _17._m0.xy;
    float _75 = 0.00019999999494757503271102905273438 + dot(_69 * 0.100000001490116119384765625, _69 * 0.100000001490116119384765625);
    _85 = vec4((_59 * 1024.0) * _89.w, 1.0 / gl_FragCoord.w, _75 * _89.w);
}

