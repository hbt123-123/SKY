#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

invariant gl_Position;

layout(location = 0) in vec4 _14;
layout(location = 0) out f16vec4 _28;
layout(location = 1) in f16vec4 _30;

void main()
{
    vec4 _22 = vec4(_14.xyz, 1.0);
    gl_Position = _22;
    _28 = _30;
}

