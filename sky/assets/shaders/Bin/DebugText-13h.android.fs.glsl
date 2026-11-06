#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 0) out vec4 _45;
layout(location = 0) in f16vec4 _47;

void main()
{
    f16vec4 _48 = _47;
    float16_t _70 = _48.w;
    f16vec4 _71 = _48;
    f16vec3 _73 = _71.xyz * _70;
    _48.x = _73.x;
    _48.y = _73.y;
    _48.z = _73.z;
    f16vec4 _67 = _48;
    f16vec4 _51 = _67;
    vec4 _82 = vec4(_51);
    _45 = _82;
}

