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

layout(set = 0, binding = 0) uniform mediump sampler2D _28;
layout(set = 0, binding = 1) uniform mediump sampler2D _68;

layout(location = 0) flat out vec4 _77;
layout(location = 1) flat out vec4 _85;

void main()
{
    f16vec3 _24 = f16vec4(textureLod(_28, vec2(0.25), 0.0)).xyz;
    f16vec3 _38 = f16vec4(textureLod(_28, vec2(0.75, 0.25), 0.0)).xyz;
    f16vec3 _45 = f16vec4(textureLod(_28, vec2(0.25, 0.75), 0.0)).xyz;
    f16vec3 _51 = f16vec4(textureLod(_28, vec2(0.75), 0.0)).xyz;
    f16vec3 _57 = (((_24 + _38) + _45) + _51) * float16_t(0.25);
    f16vec3 _67 = f16vec4(textureLod(_68, vec2(0.5, 1.0), 0.0)).xyz;
    _77 = vec4(vec3(_57), 1.0);
    _85 = vec4(vec3(_67), 1.0);
    gl_Position = vec4(1.0);
    float _95 = 1.0;
    gl_PointSize = _95;
}

