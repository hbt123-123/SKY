#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 0) out vec4 _20;
layout(location = 0) in f16vec4 _22;

void main()
{
    f16vec4 _23 = _22;
    vec4 _42 = vec4(_23);
    _20 = _42;
}

