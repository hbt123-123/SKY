#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 1, std140) uniform _26_28
{
    vec4 _m0;
    vec2 _m1;
} _28;

layout(set = 1, binding = 0) uniform sampler2D _41;

layout(location = 0) in vec4 _56;
layout(location = 2) in float _60;
layout(location = 1) in float _84;
layout(location = 0) out vec4 _128;

void main()
{
    vec2 _21 = gl_FragCoord.xy * _28._m0.zw;
    float _37 = textureLod(_41, _21, 0.0).x;
    float _49 = gl_FragCoord.z;
    vec4 _57 = _56;
    f16vec4 _153 = f16vec4(_57);
    f16vec4 _55 = _153;
    if (_60 > 0.5)
    {
        _55.x = float16_t(1.0);
        _55.y = float16_t(0.0);
        _55.z = float16_t(0.0);
    }
    if (_49 <= _37)
    {
        if (_84 >= 4.0)
        {
        }
        else
        {
            if (_84 >= 2.0)
            {
                _55.w *= float16_t(0.69970703125);
            }
            else
            {
                if (_84 >= 1.0)
                {
                    f16vec4 _108 = _55;
                    f16vec3 _114 = mix(_108.xyz, f16vec3(float16_t(0.25)), f16vec3(float16_t(0.625)));
                    _55.x = _114.x;
                    _55.y = _114.y;
                    _55.z = _114.z;
                    _55.w *= float16_t(0.69970703125);
                }
                else
                {
                    _55 = f16vec4(float16_t(0.0));
                }
            }
        }
    }
    vec3 _132 = vec3(_55.xyz);
    _128.x = _132.x;
    _128.y = _132.y;
    _128.z = _132.z;
    _128.w = float(_55.w);
}

