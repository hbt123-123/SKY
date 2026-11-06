#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 0) in f16vec3 _110;
layout(location = 1) in f16vec2 _116;
layout(location = 0) out vec4 _128;

void main()
{
    vec3 _113 = vec3(_110);
    f16vec3 _164 = f16vec3(_113);
    f16vec3 _108 = _164;
    vec2 _119 = vec2(_116);
    f16vec2 _168 = f16vec2(_119);
    f16vec2 _121 = _168;
    f16vec3 _122 = _108;
    float _173 = 0.829999983310699462890625;
    float16_t _194 = float16_t(_173);
    float _174 = 1.0;
    float16_t _198 = float16_t(_174);
    float16_t _175 = _121.y;
    float16_t _176 = float16_t(0.0);
    float16_t _177 = float16_t(0.599609375);
    float16_t _202 = (_175 - _176) / (_177 - _176);
    float16_t _213 = clamp(_202, float16_t(0.0), float16_t(1.0));
    float16_t _203 = _213;
    float _178 = float(_203);
    float16_t _217 = float16_t(_178);
    float16_t _172 = mix(_194, _198, _217);
    _172 *= _172;
    _122 *= _172;
    _108 = _122;
    f16vec3 _129 = _108;
    vec3 _221 = vec3(_129);
    _128 = vec4(_221, 0.0);
}

