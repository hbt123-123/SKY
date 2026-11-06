#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

struct _59
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

layout(set = 1, binding = 5, std430) restrict buffer _61_63
{
    _59 _m0[];
} _63;

layout(location = 1) flat in f16vec4 _50;
layout(location = 0) flat in uint _67;
layout(location = 0) out vec4 _76;

void main()
{
    vec4 _53 = vec4(_50);
    f16vec4 _83 = f16vec4(_53);
    f16vec4 _48 = _83;
    f16vec4 _70 = _48;
    f16vec4 _87 = _70;
    vec4 _95 = vec4(_87);
    vec4 _88 = _95;
    uint _99 = packUnorm4x8(_88);
    uint _90 = _99;
    _63._m0[_67]._m7 = _90;
    _76 = vec4(0.0);
}

