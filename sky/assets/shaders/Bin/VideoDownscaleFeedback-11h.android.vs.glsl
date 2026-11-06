#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 0, binding = 1, std430) restrict buffer _63_65
{
    vec4 _m0;
    vec4 _m1;
} _65;

layout(set = 0, binding = 0) uniform mediump sampler2D _14;
layout(set = 0, binding = 2) uniform mediump sampler2D _55;

void main()
{
    f16vec3 _9 = f16vec4(textureLod(_14, vec2(0.25), 0.0)).xyz;
    f16vec3 _25 = f16vec4(textureLod(_14, vec2(0.75, 0.25), 0.0)).xyz;
    f16vec3 _32 = f16vec4(textureLod(_14, vec2(0.25, 0.75), 0.0)).xyz;
    f16vec3 _38 = f16vec4(textureLod(_14, vec2(0.75), 0.0)).xyz;
    f16vec3 _44 = (((_9 + _25) + _32) + _38) * float16_t(0.25);
    f16vec3 _54 = f16vec4(textureLod(_55, vec2(0.5, 1.0), 0.0)).xyz;
    _65._m0 = vec4(vec3(_44), 1.0);
    _65._m1 = vec4(vec3(_54), 1.0);
}

