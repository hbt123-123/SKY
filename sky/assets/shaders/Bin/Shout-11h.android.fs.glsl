#version 450

layout(set = 1, binding = 1, std140) uniform _102_104
{
    vec4 _m0;
    vec2 _m1;
} _104;

layout(set = 1, binding = 2, std140) uniform _115_117
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
} _117;

layout(set = 1, binding = 0, std140) uniform _143_145
{
    float _m0;
    float _m1;
    float _m2;
    vec3 _m3;
} _145;

layout(set = 1, binding = 3) uniform sampler2D _125;

layout(location = 0) in vec3 _166;
layout(location = 2) in vec3 _170;
layout(location = 1) in float _195;
layout(location = 0) out vec4 _231;
layout(location = 1) out vec4 _244;

void main()
{
    vec3 _164 = normalize(_166);
    vec3 _169 = normalize(_170);
    float _173 = dot(_164, _169);
    float _177 = step(0.0, _173);
    float _180 = ((1.0 - _173) * (1.0 - _173)) * 0.800000011920928955078125;
    float _188 = 1.0 + _173;
    float _191 = abs(_173);
    float _282 = 1.0 / gl_FragCoord.w;
    vec2 _283 = gl_FragCoord.xy * _104._m0.zw;
    float _285 = max(textureLod(_125, _283, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _327 = 1.0 / _285;
    float _284 = _117._m24 * _327;
    float _286 = _284 - _282;
    float _287 = (_286 * 0.5) / _145._m2;
    float _331 = clamp(_287, 0.0, 1.0);
    _286 = _331;
    float _288 = smoothstep(0.0, 1.0, _286) * smoothstep(_117._m24, _117._m24 + 0.5, _282);
    float _194 = (((_195 * mix(_188, _180, _177)) * 0.5) * _288) * _145._m1;
    float _213 = _191;
    float _215 = 2.0 - _191;
    vec3 _335 = (vec3(-0.25, -0.5, -0.75) + vec3(_213)) * _215;
    vec3 _336 = vec3(1.0) - (_335 * _335);
    vec3 _350 = max(_336, vec3(0.0));
    vec3 _337 = _350;
    vec3 _209 = (_337 * vec3(_145._m0 * _117._m23)) * _145._m3;
    float _233 = _194;
    float _354 = clamp(_233, 0.0, 1.0);
    float _237 = _194;
    float _358 = clamp(_237, 0.0, 1.0);
    _231 = vec4(_209 * _354, _358);
    float _249 = 1.0 / gl_FragCoord.w;
    float _250 = 256.0;
    float _362 = log(_249 * 20.0) * (_250 * 0.079292468726634979248046875);
    float _372 = max(_362, 0.0);
    float _363 = _372;
    float _252 = _194;
    float _376 = clamp(_252, 0.0, 1.0);
    float _256 = _194;
    float _380 = clamp(_256, 0.0, 1.0);
    float _261 = _194;
    float _384 = clamp(_261, 0.0, 1.0);
    _244 = vec4(_363 * _376, _380 * 1000.0, 0.0, _384);
}

