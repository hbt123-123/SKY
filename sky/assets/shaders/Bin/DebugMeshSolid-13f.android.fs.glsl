#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 1) in vec4 _84;
layout(location = 0) in vec3 _105;
layout(location = 0) out vec4 _143;

void main()
{
    bool _77 = gl_FrontFacing;
    vec4 _85 = _84;
    f16vec4 _180 = f16vec4(_85);
    f16vec4 _82 = _180;
    if (!_77)
    {
        _82.x = float16_t(1.0);
        _82.y = float16_t(0.0);
        _82.z = float16_t(0.0);
    }
    vec3 _106 = _105;
    vec3 _184 = dFdx(_106);
    vec3 _185 = dFdy(_106);
    vec3 _186 = normalize(cross(_184, _185));
    vec3 _109 = _186;
    f16vec3 _196 = f16vec3(_109);
    f16vec3 _103 = _196;
    float16_t _111 = _103.y;
    float16_t _116 = _111;
    float16_t _200 = (_116 * float16_t(0.5)) + float16_t(0.5);
    float16_t _114 = float16_t(0.0999755859375) + (float16_t(0.0999755859375) * _200);
    float16_t _123 = _111;
    float16_t _205 = clamp(_123, float16_t(0.0), float16_t(1.0));
    float16_t _127 = _114 + _205;
    float16_t _209 = clamp(_127, float16_t(0.0), float16_t(1.0));
    float16_t _121 = _209;
    f16vec4 _130 = _82;
    f16vec3 _132 = _130.xyz * _121;
    _82.x = _132.x;
    _82.y = _132.y;
    _82.z = _132.z;
    f16vec3 _139 = _82.xyz;
    f16vec3 _144 = _139;
    vec3 _213 = vec3(_144);
    _143 = vec4(_213, 0.0);
}

