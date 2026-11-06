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
layout(location = 0) out f16vec4 _49;

void main()
{
    f16vec4 _9 = f16vec4(texture(_14, _18));
    f16vec4 _23 = step(_9, f16vec4(float16_t(0.0031299591064453125)));
    f16vec4 _28 = (f16vec4(float16_t(1.0546875)) * pow(_9, f16vec4(float16_t(0.41650390625)))) - f16vec4(float16_t(0.05499267578125));
    f16vec4 _39 = _9 * f16vec4(float16_t(12.9140625));
    _9 = mix(_28, _39, _23);
    _49 = _9;
}

