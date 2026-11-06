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

layout(location = 0) in vec2 _15;
layout(location = 0) out f16vec4 _31;
layout(location = 1) in f16vec4 _33;

void main()
{
    vec4 _25 = vec4(_15.x, _15.y, 1.0, 1.0);
    gl_Position = _25;
    f16vec3 _39 = pow(_33.xyz, f16vec3(float16_t(2.19921875)));
    _31.x = _39.x;
    _31.y = _39.y;
    _31.z = _39.z;
    _31.w = _33.w;
    float _57 = gl_Position.y * (-1.0);
    gl_Position.y = _57;
}

