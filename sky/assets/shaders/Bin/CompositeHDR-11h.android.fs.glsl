#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 2, std140) uniform _40_42
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
} _42;

layout(set = 1, binding = 0, std140) uniform _94_96
{
    float _m0;
} _96;

layout(set = 1, binding = 5) uniform mediump sampler2D _63;
layout(set = 1, binding = 4) uniform mediump sampler2D _71;
layout(set = 1, binding = 3) uniform mediump sampler2D _80;

layout(location = 0) in vec2 _66;
layout(location = 0) out vec4 _115;

void main()
{
    f16vec3 _32 = f16vec3(_42._m2.xyz);
    float16_t _51 = float16_t(_42._m2.w);
    f16vec4 _59 = f16vec4(texture(_63, _66));
    f16vec3 _70 = f16vec4(texture(_71, _66)).xyz * _32;
    f16vec3 _85 = f16vec4(texture(_80, _66)).xyz;
    f16vec3 _141 = max(f16vec3(float16_t(9.9956989288330078125e-05)), _85);
    f16vec3 _148 = f16vec3(float16_t(1.0)) / _141;
    f16vec3 _142 = _148 - f16vec3(float16_t(1.0));
    f16vec3 _79 = _142;
    f16vec3 _88 = mix(_79, _59.xyz, f16vec3(_59.w * float16_t(_96._m0 > 0.0))) * _51;
    f16vec3 _110 = _88 + _70;
    _115 = vec4(f16vec4(_110, float16_t(1.0)));
}

