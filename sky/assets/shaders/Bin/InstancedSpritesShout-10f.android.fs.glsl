#version 450

layout(set = 1, binding = 1, std140) uniform _33_35
{
    vec4 _m0;
    vec2 _m1;
} _35;

layout(set = 1, binding = 2, std140) uniform _54_56
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
} _56;

layout(set = 1, binding = 0) uniform mediump sampler2D _64;

layout(location = 1) in vec4 _89;
layout(location = 0) out vec4 _133;
layout(location = 0) in vec4 _134;

void main()
{
    vec2 _27 = gl_FragCoord.xy * _35._m0.zw;
    float _43 = 1.0 / gl_FragCoord.w;
    float _72 = max(texture(_64, _27).x, 1.0000000116860974230803549289703e-07);
    float _164 = 1.0 / _72;
    float _50 = _56._m24 * _164;
    float _75 = _50 - _43;
    float _85 = exp2((-_75) * 0.100000001490116119384765625);
    float _168 = clamp(_85, 0.0, 1.0);
    float _79 = 1.0 - _168;
    float _88 = _89.z * 2.0;
    float _95 = dot(_89.xy, _89.xy);
    float _101 = mix(_95, 1.0, _88);
    float _105 = 1.0 - smoothstep(mix(0.699999988079071044921875, -2.0, _88), 1.0, _95);
    _105 = mix(_105, ((_105 * 0.100000001490116119384765625) + 1.0) - smoothstep(0.0, 0.0199999995529651641845703125, _95), _88);
    float _123 = (_101 * _105) * mix(90.0, 20.0, _88);
    _133 = vec4((_134.xyz * _134.w) * _123, 0.0) * _79;
}

