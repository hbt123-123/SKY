#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

invariant gl_Position;

struct _488
{
    float _m0[2];
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
};

struct _492
{
    float _m0[2];
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
};

layout(set = 0, binding = 4, std430) restrict readonly buffer _494_496
{
    _492 _m0[];
} _496;

layout(set = 0, binding = 0) uniform mediump sampler2D _143;
layout(set = 0, binding = 1) uniform mediump sampler2D _150;
layout(set = 0, binding = 2) uniform mediump sampler2D _156;
layout(set = 0, binding = 3) uniform mediump sampler2D _162;
layout(set = 0, binding = 5) uniform mediump sampler2D _168;
layout(set = 0, binding = 6) uniform mediump sampler2D _174;
layout(set = 0, binding = 7) uniform mediump sampler2D _180;
layout(set = 0, binding = 8) uniform mediump sampler2D _186;

layout(location = 0) flat out uint _538;
layout(location = 1) flat out vec4 _542;

void main()
{
    bool _596 = false;
    int _484 = gl_VertexIndex;
    _488 _501;
    _501._m0[0] = _496._m0[_484]._m0[0];
    _501._m0[1] = _496._m0[_484]._m0[1];
    _501._m1 = _496._m0[_484]._m1;
    _501._m2 = _496._m0[_484]._m2;
    _501._m3 = _496._m0[_484]._m3;
    _501._m4 = _496._m0[_484]._m4;
    _488 _490 = _501;
    float _503[2] = _490._m0;
    vec2 _568 = vec2(_503[0], _503[1]);
    vec2 _502 = _568;
    uint _507 = _490._m1;
    f16vec3 _510 = f16vec3(float16_t(0.0));
    uint _512 = _490._m2;
    vec2 _575 = unpackHalf2x16(_512);
    f16vec2 _582 = f16vec2(_575);
    f16vec2 _577 = _582;
    _510.x = _577.x;
    _510.y = _577.y;
    uint _520 = _490._m3;
    vec2 _586 = unpackHalf2x16(_520);
    f16vec2 _592 = f16vec2(_586);
    f16vec2 _587 = _592;
    _510.z = _587.x;
    vec2 _527 = _502;
    uint _529 = _507;
    _596 = false;
    f16vec4 _597;
    do
    {
        switch (_529)
        {
            case 0u:
            {
                _596 = true;
                _597 = f16vec4(textureLod(_143, _527, 0.0));
                break;
            }
            case 1u:
            {
                _596 = true;
                _597 = f16vec4(textureLod(_150, _527, 0.0));
                break;
            }
            case 2u:
            {
                _596 = true;
                _597 = f16vec4(textureLod(_156, _527, 0.0));
                break;
            }
            case 3u:
            {
                _596 = true;
                _597 = f16vec4(textureLod(_162, _527, 0.0));
                break;
            }
            case 4u:
            {
                _596 = true;
                _597 = f16vec4(textureLod(_168, _527, 0.0));
                break;
            }
            case 5u:
            {
                _596 = true;
                _597 = f16vec4(textureLod(_174, _527, 0.0));
                break;
            }
            case 6u:
            {
                _596 = true;
                _597 = f16vec4(textureLod(_180, _527, 0.0));
                break;
            }
            case 7u:
            {
                _596 = true;
                _597 = f16vec4(textureLod(_186, _527, 0.0));
                break;
            }
            default:
            {
                _596 = true;
                _597 = f16vec4(float16_t(1.0), float16_t(0.0), float16_t(1.0), float16_t(1.0));
                break;
            }
        }
        if (_596)
        {
            break;
        }
        break;
    } while(false);
    f16vec4 _598 = _597;
    f16vec4 _526 = _598;
    f16vec4 _532 = _526;
    f16vec3 _534 = _510;
    f16vec3 _649 = _532.xyz;
    f16vec3 _682 = _649;
    f16vec3 _774 = f16vec3(pow(vec3(_682), vec3(0.4545454680919647216796875)));
    vec3 _681 = vec3(_774);
    vec3 _684 = _681;
    float _780 = max(max(_684.x, _684.y), _684.z);
    float _683 = _780;
    vec3 _686 = _681;
    float _790 = min(min(_686.x, _686.y), _686.z);
    float _685 = _790;
    float _687 = _683 - _685;
    float _688 = 0.0;
    float _689 = 0.0;
    float _690 = _683;
    if (_687 > 0.0)
    {
        if (_683 == _681.x)
        {
            _688 = 60.0 * mod((_681.y - _681.z) / _687, 6.0);
        }
        else
        {
            if (_683 == _681.y)
            {
                _688 = 60.0 * (((_681.z - _681.x) / _687) + 2.0);
            }
            else
            {
                _688 = 60.0 * (((_681.x - _681.y) / _687) + 4.0);
            }
        }
        float _691;
        if (_683 > 0.0)
        {
            _691 = _687 / _683;
        }
        else
        {
            _691 = 0.0;
        }
        _689 = _691;
    }
    if (_688 < 0.0)
    {
        _688 += 360.0;
    }
    _688 = radians(_688);
    f16vec3 _692 = f16vec3(float16_t(_688), float16_t(_689), float16_t(_690));
    f16vec3 _648 = _692;
    _648 += _534;
    _648.x = mod(_648.x, float16_t(6.28125));
    float16_t _650 = _648.y;
    float16_t _800 = clamp(_650, float16_t(0.0), float16_t(1.0));
    _648.y = _800;
    float16_t _651 = _648.z;
    float16_t _804 = clamp(_651, float16_t(0.0), float16_t(1.0));
    _648.z = _804;
    f16vec3 _652 = _648;
    f16vec3 _809;
    do
    {
        float _810 = float(_652.x);
        float _811 = float(_652.y);
        float _812 = float(_652.z);
        if (_811 == 0.0)
        {
            f16vec3 _813 = f16vec3(float16_t(_812), float16_t(_812), float16_t(_812));
            f16vec3 _944 = f16vec3(pow(vec3(_813), vec3(2.2000000476837158203125)));
            _809 = _944;
            break;
        }
        _810 = degrees(_810) / 60.0;
        int _814 = int(_810);
        float _815 = _810 - float(_814);
        float _816 = _812 * (1.0 - _811);
        float _817 = _812 * (1.0 - (_811 * _815));
        float _818 = _812 * (1.0 - (_811 * (1.0 - _815)));
        _814 %= 6;
        f16vec3 _819;
        if (_814 == 0)
        {
            _819 = f16vec3(float16_t(_812), float16_t(_818), float16_t(_816));
        }
        else
        {
            if (_814 == 1)
            {
                _819 = f16vec3(float16_t(_817), float16_t(_812), float16_t(_816));
            }
            else
            {
                if (_814 == 2)
                {
                    _819 = f16vec3(float16_t(_816), float16_t(_812), float16_t(_818));
                }
                else
                {
                    if (_814 == 3)
                    {
                        _819 = f16vec3(float16_t(_816), float16_t(_817), float16_t(_812));
                    }
                    else
                    {
                        if (_814 == 4)
                        {
                            _819 = f16vec3(float16_t(_818), float16_t(_816), float16_t(_812));
                        }
                        else
                        {
                            _819 = f16vec3(float16_t(_812), float16_t(_816), float16_t(_817));
                        }
                    }
                }
            }
        }
        f16vec3 _820 = _819;
        f16vec3 _950 = f16vec3(pow(vec3(_820), vec3(2.2000000476837158203125)));
        _809 = _950;
        break;
    } while(false);
    f16vec3 _821 = _809;
    f16vec4 _653 = f16vec4(_821, _532.w);
    _526 = _653;
    _538 = _490._m4;
    _542 = vec4(_526);
    gl_Position = vec4(0.0, 0.0, 1.0, 1.0);
    float _547 = 1.0;
    gl_PointSize = _547;
}

