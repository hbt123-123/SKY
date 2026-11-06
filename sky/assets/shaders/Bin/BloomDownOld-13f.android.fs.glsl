#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0) uniform mediump sampler2D _38;

layout(location = 0) in vec2 _42;
layout(location = 1) in vec4 _52;
layout(location = 2) in vec4 _67;
layout(location = 0) out vec4 _124;

void main()
{
    float16_t _29 = float16_t(1.0029296875);
    float16_t _31 = float16_t(1.099609375);
    f16vec3 _33 = f16vec4(texture(_38, _42)).xyz;
    f16vec3 _49 = f16vec4(texture(_38, _52.xy)).xyz;
    f16vec3 _58 = f16vec4(texture(_38, _52.zw)).xyz;
    f16vec3 _65 = f16vec4(texture(_38, _67.xy)).xyz;
    f16vec3 _73 = f16vec4(texture(_38, _67.zw)).xyz;
    f16vec3 _80 = (((_49 + _58) + _65) + _73) * float16_t(0.5);
    float16_t _91 = _29;
    float16_t _146 = float16_t(1.0) / _91;
    _33 *= f16vec3(_29, float16_t(1.0), _146);
    float16_t _97 = _29;
    float16_t _150 = float16_t(1.0) / _97;
    _80 *= f16vec3(_150, float16_t(1.0), _29);
    f16vec3 _104 = min(f16vec3(float16_t(1000.0)), _80 - _33);
    f16vec3 _113 = _104;
    f16vec3 _154 = max(_113, f16vec3(float16_t(0.0)));
    f16vec4 _112 = f16vec4(pow(_154, f16vec3(_31)), float16_t(0.0));
    _124 = vec4(f16vec4(_112));
}

