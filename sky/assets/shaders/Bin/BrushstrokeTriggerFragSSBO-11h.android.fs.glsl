#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

struct _55
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

layout(set = 1, binding = 4, std430) restrict buffer _57_59
{
    _55 _m0[];
} _59;

layout(location = 0) flat in int _63;
layout(location = 1) flat in float _73;
layout(location = 2) flat in int _76;
layout(location = 0) out vec4 _99;

void main()
{
    uint _66 = _59._m0[_63]._m4;
    vec2 _106 = unpackHalf2x16(_66);
    f16vec2 _112 = f16vec2(_106);
    f16vec2 _107 = _112;
    f16vec2 _50 = _107;
    float16_t _82;
    if (_76 != int(0u))
    {
        _82 = -_50.y;
    }
    else
    {
        _82 = _50.y;
    }
    f16vec2 _94 = f16vec2(float16_t(_73), _82);
    f16vec2 _116 = _94;
    vec2 _122 = vec2(_116);
    uint _117 = packHalf2x16(_122);
    _59._m0[_63]._m4 = _117;
    _99 = vec4(0.0);
}

