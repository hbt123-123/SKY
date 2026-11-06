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
layout(location = 0) out vec4 _125;

void main()
{
    f16vec3 _53 = f16vec4(textureLod(_57, _61, 0.0)).xyz;
    _53.y = f16vec4(texture(_68, _61)).x;
    _53.z = f16vec4(texture(_79, _61)).x;
    vec4 _88 = vec4(f16vec4(_53, float16_t(1.0)));
    vec3 _114 = vec3(dot(_88, vec4(1.16438353061676025390625, 0.0, 1.7927410602569580078125, -0.97294509410858154296875)), dot(_88, vec4(1.16438353061676025390625, -0.21324850618839263916015625, -0.532909333705902099609375, 0.3014826476573944091796875)), dot(_88, vec4(1.16438353061676025390625, 2.1124017238616943359375, 0.0, -1.13340222835540771484375)));
    vec3 _139 = clamp(_114, vec3(0.0), vec3(1.0));
    _53 = f16vec3(_139);
    f16vec3 _117 = _53;
    f16vec3 _145 = pow((_117 + f16vec3(float16_t(0.05499267578125))) * float16_t(0.94775390625), f16vec3(float16_t(2.3984375)));
    f16vec3 _146 = _117 * float16_t(0.077392578125);
    f16vec3 _147 = mix(_145, _146, lessThan(_117, f16vec3(float16_t(0.040435791015625))));
    _53 = _147;
    _53 = max(_53, f16vec3(float16_t(0.0)));
    _125 = vec4(vec3(_53), 1.0);
}

