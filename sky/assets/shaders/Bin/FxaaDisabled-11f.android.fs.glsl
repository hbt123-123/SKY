#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0) uniform mediump sampler2D _20;

layout(location = 0) in vec2 _11;
layout(location = 0) out vec4 _28;

void main()
{
    vec2 _9 = _11;
    f16vec4 _16 = f16vec4(textureLod(_20, _9, 0.0));
    _28 = vec4(f16vec4(_16));
}

