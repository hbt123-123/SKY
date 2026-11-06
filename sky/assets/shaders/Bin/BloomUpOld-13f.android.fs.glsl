#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0, std140) uniform _38_40
{
    vec2 _m0;
    float _m1;
    float _m2;
} _40;

layout(set = 1, binding = 3) uniform mediump sampler2D _54;

layout(location = 0) in vec4 _56;
layout(location = 0) out vec4 _135;

void main()
{
    float16_t _17 = float16_t(1.0029296875);
    vec2 _24 = (fract(gl_FragCoord.xy * 0.5) * (-4.0)) + vec2(2.0);
    _24 /= _40._m0;
    f16vec3 _50 = f16vec4(texture(_54, _56.zw + (_24 * vec2(0.4000000059604644775390625)))).xyz * float16_t(4.0);
    f16vec3 _70 = f16vec4(texture(_54, _56.zw + (_24 * vec2(0.4000000059604644775390625, -0.800000011920928955078125)))).xyz * float16_t(2.0);
    f16vec3 _84 = f16vec4(texture(_54, _56.zw + (_24 * vec2(-0.800000011920928955078125, 0.4000000059604644775390625)))).xyz * float16_t(2.0);
    f16vec3 _96 = f16vec4(texture(_54, _56.zw + (_24 * vec2(-0.800000011920928955078125)))).xyz;
    float16_t _114 = float16_t(_40._m2);
    float16_t _160 = float16_t(1.0) / _114;
    float16_t _107 = float16_t(0.2998046875) * _160;
    f16vec3 _117 = (((_50 + _70) + _84) + _96) * _107;
    float16_t _127 = _17;
    float16_t _164 = float16_t(1.0) / _127;
    _117 *= f16vec3(_164, float16_t(1.0), _17);
    _135 = vec4(f16vec4(_117, float16_t(_40._m1)));
}

