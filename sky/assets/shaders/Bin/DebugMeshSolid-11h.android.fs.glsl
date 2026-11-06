#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 1) in f16vec4 _84;
layout(location = 0) in vec3 _106;
layout(location = 0) out vec4 _144;

void main()
{
    bool _77 = gl_FrontFacing;
    vec4 _87 = vec4(_84);
    f16vec4 _181 = f16vec4(_87);
    f16vec4 _82 = _181;
    if (!_77)
    {
        _82.x = float16_t(1.0);
        _82.y = float16_t(0.0);
        _82.z = float16_t(0.0);
    }
    vec3 _107 = _106;
    vec3 _185 = dFdx(_107);
    vec3 _186 = dFdy(_107);
    vec3 _187 = normalize(cross(_185, _186));
    vec3 _110 = _187;
    f16vec3 _197 = f16vec3(_110);
    f16vec3 _104 = _197;
    float16_t _112 = _104.y;
    float16_t _117 = _112;
    float16_t _201 = (_117 * float16_t(0.5)) + float16_t(0.5);
    float16_t _115 = float16_t(0.0999755859375) + (float16_t(0.0999755859375) * _201);
    float16_t _124 = _112;
    float16_t _206 = clamp(_124, float16_t(0.0), float16_t(1.0));
    float16_t _128 = _115 + _206;
    float16_t _210 = clamp(_128, float16_t(0.0), float16_t(1.0));
    float16_t _122 = _210;
    f16vec4 _131 = _82;
    f16vec3 _133 = _131.xyz * _122;
    _82.x = _133.x;
    _82.y = _133.y;
    _82.z = _133.z;
    f16vec3 _140 = _82.xyz;
    f16vec3 _145 = _140;
    vec3 _214 = vec3(_145);
    _144 = vec4(_214, 0.0);
}

