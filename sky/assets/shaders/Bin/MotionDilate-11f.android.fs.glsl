#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0) uniform mediump sampler2D _20;

layout(location = 0) in vec2 _11;
layout(location = 0) out vec4 _95;

void main()
{
    vec2 _9 = _11;
    f16vec4 _16 = f16vec4(textureOffset(_20, _9, ivec2(0)));
    f16vec4 _30 = f16vec4(textureOffset(_20, _9, ivec2(-1)));
    f16vec4 _37 = f16vec4(textureOffset(_20, _9, ivec2(1, -1)));
    f16vec4 _44 = f16vec4(textureOffset(_20, _9, ivec2(-1, 1)));
    f16vec4 _50 = f16vec4(textureOffset(_20, _9, ivec2(1)));
    f16vec4 _56 = _16;
    if (_56.z > _30.z)
    {
        _56 = _30;
    }
    if (_56.z > _37.z)
    {
        _56 = _37;
    }
    if (_56.z > _44.z)
    {
        _56 = _44;
    }
    if (_56.z > _50.z)
    {
        _56 = _50;
    }
    _95 = vec4(f16vec4(_56));
}

