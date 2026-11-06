#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 0) in vec3 _110;
layout(location = 1) in vec2 _115;
layout(location = 0) out vec4 _126;

void main()
{
    vec3 _111 = _110;
    f16vec3 _162 = f16vec3(_111);
    f16vec3 _108 = _162;
    vec2 _116 = _115;
    f16vec2 _166 = f16vec2(_116);
    f16vec2 _119 = _166;
    f16vec3 _120 = _108;
    float _171 = 0.829999983310699462890625;
    float16_t _192 = float16_t(_171);
    float _172 = 1.0;
    float16_t _196 = float16_t(_172);
    float16_t _173 = _119.y;
    float16_t _174 = float16_t(0.0);
    float16_t _175 = float16_t(0.599609375);
    float16_t _200 = (_173 - _174) / (_175 - _174);
    float16_t _211 = clamp(_200, float16_t(0.0), float16_t(1.0));
    float16_t _201 = _211;
    float _176 = float(_201);
    float16_t _215 = float16_t(_176);
    float16_t _170 = mix(_192, _196, _215);
    _170 *= _170;
    _120 *= _170;
    _108 = _120;
    f16vec3 _127 = _108;
    vec3 _219 = vec3(_127);
    _126 = vec4(_219, 0.0);
}

