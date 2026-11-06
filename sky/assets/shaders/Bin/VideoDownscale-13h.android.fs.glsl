#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0) uniform mediump sampler2D _14;

layout(location = 0) in vec2 _18;
layout(location = 0) out vec4 _31;

void main()
{
    f16vec3 _9 = f16vec4(textureLod(_14, _18, 0.0)).xyz;
    _9 = max(_9, f16vec3(float16_t(0.0)));
    _31 = vec4(vec3(_9), 1.0);
}

