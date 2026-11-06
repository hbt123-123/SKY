#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

struct _58
{
    float _m0[3];
    float _m1[3];
    uint _m2;
    uint _m3[3];
    uint _m4;
    uint _m5;
    uint _m6;
    uint _m7;
};

layout(set = 1, binding = 5, std430) restrict buffer _60_62
{
    _58 _m0[];
} _62;

layout(location = 1) flat in vec4 _50;
layout(location = 0) flat in uint _66;
layout(location = 0) out vec4 _75;

void main()
{
    vec4 _51 = _50;
    f16vec4 _82 = f16vec4(_51);
    f16vec4 _48 = _82;
    f16vec4 _69 = _48;
    f16vec4 _86 = _69;
    vec4 _94 = vec4(_86);
    vec4 _87 = _94;
    uint _98 = packUnorm4x8(_87);
    uint _89 = _98;
    _62._m0[_66]._m7 = _89;
    _75 = vec4(0.0);
}

