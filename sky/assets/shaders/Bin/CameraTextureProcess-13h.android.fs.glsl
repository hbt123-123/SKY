#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0) uniform mediump sampler2D _43;

layout(location = 0) in vec2 _47;
layout(location = 0) out vec4 _63;

void main()
{
    f16vec3 _38 = f16vec4(textureLod(_43, _47, 0.0)).xyz;
    f16vec3 _55 = _38;
    f16vec3 _76 = pow((_55 + f16vec3(float16_t(0.05499267578125))) * float16_t(0.94775390625), f16vec3(float16_t(2.3984375)));
    f16vec3 _77 = _55 * float16_t(0.077392578125);
    f16vec3 _78 = mix(_76, _77, lessThan(_55, f16vec3(float16_t(0.040435791015625))));
    _38 = _78;
    _38 = max(_38, f16vec3(float16_t(0.0)));
    _63 = vec4(vec3(_38), 1.0);
}

