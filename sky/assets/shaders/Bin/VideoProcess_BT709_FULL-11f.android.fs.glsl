#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0) uniform mediump sampler2D _57;
layout(set = 1, binding = 1) uniform mediump sampler2D _68;
layout(set = 1, binding = 2) uniform mediump sampler2D _79;

layout(location = 0) in vec2 _61;
layout(location = 0) out vec4 _124;

void main()
{
    f16vec3 _53 = f16vec4(textureLod(_57, _61, 0.0)).xyz;
    _53.y = f16vec4(texture(_68, _61)).x;
    _53.z = f16vec4(texture(_79, _61)).x;
    vec4 _88 = vec4(f16vec4(_53, float16_t(1.0)));
    vec3 _113 = vec3(dot(_88, vec4(1.0, 0.0, 1.574800014495849609375, -0.7874000072479248046875)), dot(_88, vec4(1.0, -0.18732427060604095458984375, -0.46812427043914794921875, 0.327724277973175048828125)), dot(_88, vec4(1.0, 1.85559999942779541015625, 0.0, -0.927799999713897705078125)));
    vec3 _138 = clamp(_113, vec3(0.0), vec3(1.0));
    _53 = f16vec3(_138);
    f16vec3 _116 = _53;
    f16vec3 _144 = pow((_116 + f16vec3(float16_t(0.05499267578125))) * float16_t(0.94775390625), f16vec3(float16_t(2.3984375)));
    f16vec3 _145 = _116 * float16_t(0.077392578125);
    f16vec3 _146 = mix(_144, _145, lessThan(_116, f16vec3(float16_t(0.040435791015625))));
    _53 = _146;
    _53 = max(_53, f16vec3(float16_t(0.0)));
    _124 = vec4(vec3(_53), 1.0);
}

