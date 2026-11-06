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

layout(location = 0) flat out uint _551;
layout(location = 1) flat out vec4 _555;

void main()
{
    bool _609 = false;
    int _484 = gl_VertexIndex;
    _488 _490;
    _490._m0[0] = _496._m0[_484]._m0[0];
    _490._m0[1] = _496._m0[_484]._m0[1];
    _490._m1 = _496._m0[_484]._m1;
    _490._m2 = _496._m0[_484]._m2;
    _490._m3 = _496._m0[_484]._m3;
    _490._m4 = _496._m0[_484]._m4;
    float _516[2] = _490._m0;
    vec2 _581 = vec2(_516[0], _516[1]);
    vec2 _515 = _581;
    uint _520 = _490._m1;
    f16vec3 _523 = f16vec3(float16_t(0.0));
    uint _525 = _490._m2;
    vec2 _588 = unpackHalf2x16(_525);
    f16vec2 _595 = f16vec2(_588);
    f16vec2 _590 = _595;
    _523.x = _590.x;
    _523.y = _590.y;
    uint _533 = _490._m3;
    vec2 _599 = unpackHalf2x16(_533);
    f16vec2 _605 = f16vec2(_599);
    f16vec2 _600 = _605;
    _523.z = _600.x;
    vec2 _540 = _515;
    uint _542 = _520;
    _609 = false;
    f16vec4 _610;
    do
    {
        switch (_542)
        {
            case 0u:
            {
                _609 = true;
                _610 = f16vec4(textureLod(_143, _540, 0.0));
                break;
            }
            case 1u:
            {
                _609 = true;
                _610 = f16vec4(textureLod(_150, _540, 0.0));
                break;
            }
            case 2u:
            {
                _609 = true;
                _610 = f16vec4(textureLod(_156, _540, 0.0));
                break;
            }
            case 3u:
            {
                _609 = true;
                _610 = f16vec4(textureLod(_162, _540, 0.0));
                break;
            }
            case 4u:
            {
                _609 = true;
                _610 = f16vec4(textureLod(_168, _540, 0.0));
                break;
            }
            case 5u:
            {
                _609 = true;
                _610 = f16vec4(textureLod(_174, _540, 0.0));
                break;
            }
            case 6u:
            {
                _609 = true;
                _610 = f16vec4(textureLod(_180, _540, 0.0));
                break;
            }
            case 7u:
            {
                _609 = true;
                _610 = f16vec4(textureLod(_186, _540, 0.0));
                break;
            }
            default:
            {
                _609 = true;
                _610 = f16vec4(float16_t(1.0), float16_t(0.0), float16_t(1.0), float16_t(1.0));
                break;
            }
        }
        if (_609)
        {
            break;
        }
        break;
    } while(false);
    f16vec4 _611 = _610;
    f16vec4 _539 = _611;
    f16vec4 _545 = _539;
    f16vec3 _547 = _523;
    f16vec3 _662 = _545.xyz;
    f16vec3 _695 = _662;
    f16vec3 _787 = f16vec3(pow(vec3(_695), vec3(0.4545454680919647216796875)));
    vec3 _694 = vec3(_787);
    vec3 _697 = _694;
    float _793 = max(max(_697.x, _697.y), _697.z);
    float _696 = _793;
    vec3 _699 = _694;
    float _803 = min(min(_699.x, _699.y), _699.z);
    float _698 = _803;
    float _700 = _696 - _698;
    float _701 = 0.0;
    float _702 = 0.0;
    float _703 = _696;
    if (_700 > 0.0)
    {
        if (_696 == _694.x)
        {
            _701 = 60.0 * mod((_694.y - _694.z) / _700, 6.0);
        }
        else
        {
            if (_696 == _694.y)
            {
                _701 = 60.0 * (((_694.z - _694.x) / _700) + 2.0);
            }
            else
            {
                _701 = 60.0 * (((_694.x - _694.y) / _700) + 4.0);
            }
        }
        float _704;
        if (_696 > 0.0)
        {
            _704 = _700 / _696;
        }
        else
        {
            _704 = 0.0;
        }
        _702 = _704;
    }
    if (_701 < 0.0)
    {
        _701 += 360.0;
    }
    _701 = radians(_701);
    f16vec3 _705 = f16vec3(float16_t(_701), float16_t(_702), float16_t(_703));
    f16vec3 _661 = _705;
    _661 += _547;
    _661.x = mod(_661.x, float16_t(6.28125));
    float16_t _663 = _661.y;
    float16_t _813 = clamp(_663, float16_t(0.0), float16_t(1.0));
    _661.y = _813;
    float16_t _664 = _661.z;
    float16_t _817 = clamp(_664, float16_t(0.0), float16_t(1.0));
    _661.z = _817;
    f16vec3 _665 = _661;
    f16vec3 _822;
    do
    {
        float _823 = float(_665.x);
        float _824 = float(_665.y);
        float _825 = float(_665.z);
        if (_824 == 0.0)
        {
            f16vec3 _826 = f16vec3(float16_t(_825), float16_t(_825), float16_t(_825));
            f16vec3 _957 = f16vec3(pow(vec3(_826), vec3(2.2000000476837158203125)));
            _822 = _957;
            break;
        }
        _823 = degrees(_823) / 60.0;
        int _827 = int(_823);
        float _828 = _823 - float(_827);
        float _829 = _825 * (1.0 - _824);
        float _830 = _825 * (1.0 - (_824 * _828));
        float _831 = _825 * (1.0 - (_824 * (1.0 - _828)));
        _827 %= 6;
        f16vec3 _832;
        if (_827 == 0)
        {
            _832 = f16vec3(float16_t(_825), float16_t(_831), float16_t(_829));
        }
        else
        {
            if (_827 == 1)
            {
                _832 = f16vec3(float16_t(_830), float16_t(_825), float16_t(_829));
            }
            else
            {
                if (_827 == 2)
                {
                    _832 = f16vec3(float16_t(_829), float16_t(_825), float16_t(_831));
                }
                else
                {
                    if (_827 == 3)
                    {
                        _832 = f16vec3(float16_t(_829), float16_t(_830), float16_t(_825));
                    }
                    else
                    {
                        if (_827 == 4)
                        {
                            _832 = f16vec3(float16_t(_831), float16_t(_829), float16_t(_825));
                        }
                        else
                        {
                            _832 = f16vec3(float16_t(_825), float16_t(_829), float16_t(_830));
                        }
                    }
                }
            }
        }
        f16vec3 _833 = _832;
        f16vec3 _963 = f16vec3(pow(vec3(_833), vec3(2.2000000476837158203125)));
        _822 = _963;
        break;
    } while(false);
    f16vec3 _834 = _822;
    f16vec4 _666 = f16vec4(_834, _545.w);
    _539 = _666;
    _551 = _490._m4;
    _555 = vec4(_539);
    gl_Position = vec4(0.0, 0.0, 1.0, 1.0);
    float _560 = 1.0;
    gl_PointSize = _560;
}

