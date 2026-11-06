#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

struct _506
{
    float _m0[2];
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
};

struct _510
{
    float _m0[2];
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
};

struct _558
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

layout(set = 0, binding = 4, std430) restrict readonly buffer _512_514
{
    _510 _m0[];
} _514;

layout(set = 0, binding = 5, std430) restrict buffer _560_562
{
    _558 _m0[];
} _562;

layout(set = 0, binding = 0) uniform mediump sampler2D _161;
layout(set = 0, binding = 1) uniform mediump sampler2D _168;
layout(set = 0, binding = 2) uniform mediump sampler2D _174;
layout(set = 0, binding = 3) uniform mediump sampler2D _180;
layout(set = 0, binding = 6) uniform mediump sampler2D _186;
layout(set = 0, binding = 7) uniform mediump sampler2D _192;
layout(set = 0, binding = 8) uniform mediump sampler2D _198;
layout(set = 0, binding = 9) uniform mediump sampler2D _204;

void main()
{
    bool _618 = false;
    int _502 = gl_VertexIndex;
    _506 _519;
    _519._m0[0] = _514._m0[_502]._m0[0];
    _519._m0[1] = _514._m0[_502]._m0[1];
    _519._m1 = _514._m0[_502]._m1;
    _519._m2 = _514._m0[_502]._m2;
    _519._m3 = _514._m0[_502]._m3;
    _519._m4 = _514._m0[_502]._m4;
    _506 _508 = _519;
    float _521[2] = _508._m0;
    vec2 _590 = vec2(_521[0], _521[1]);
    vec2 _520 = _590;
    uint _525 = _508._m1;
    f16vec3 _528 = f16vec3(float16_t(0.0));
    uint _530 = _508._m2;
    vec2 _597 = unpackHalf2x16(_530);
    f16vec2 _604 = f16vec2(_597);
    f16vec2 _599 = _604;
    _528.x = _599.x;
    _528.y = _599.y;
    uint _538 = _508._m3;
    vec2 _608 = unpackHalf2x16(_538);
    f16vec2 _614 = f16vec2(_608);
    f16vec2 _609 = _614;
    _528.z = _609.x;
    vec2 _545 = _520;
    uint _547 = _525;
    _618 = false;
    f16vec4 _619;
    do
    {
        switch (_547)
        {
            case 0u:
            {
                _618 = true;
                _619 = f16vec4(textureLod(_161, _545, 0.0));
                break;
            }
            case 1u:
            {
                _618 = true;
                _619 = f16vec4(textureLod(_168, _545, 0.0));
                break;
            }
            case 2u:
            {
                _618 = true;
                _619 = f16vec4(textureLod(_174, _545, 0.0));
                break;
            }
            case 3u:
            {
                _618 = true;
                _619 = f16vec4(textureLod(_180, _545, 0.0));
                break;
            }
            case 4u:
            {
                _618 = true;
                _619 = f16vec4(textureLod(_186, _545, 0.0));
                break;
            }
            case 5u:
            {
                _618 = true;
                _619 = f16vec4(textureLod(_192, _545, 0.0));
                break;
            }
            case 6u:
            {
                _618 = true;
                _619 = f16vec4(textureLod(_198, _545, 0.0));
                break;
            }
            case 7u:
            {
                _618 = true;
                _619 = f16vec4(textureLod(_204, _545, 0.0));
                break;
            }
            default:
            {
                _618 = true;
                _619 = f16vec4(float16_t(1.0), float16_t(0.0), float16_t(1.0), float16_t(1.0));
                break;
            }
        }
        if (_618)
        {
            break;
        }
        break;
    } while(false);
    f16vec4 _620 = _619;
    f16vec4 _544 = _620;
    f16vec4 _550 = _544;
    f16vec3 _552 = _528;
    f16vec3 _671 = _550.xyz;
    f16vec3 _704 = _671;
    f16vec3 _796 = f16vec3(pow(vec3(_704), vec3(0.4545454680919647216796875)));
    vec3 _703 = vec3(_796);
    vec3 _706 = _703;
    float _802 = max(max(_706.x, _706.y), _706.z);
    float _705 = _802;
    vec3 _708 = _703;
    float _812 = min(min(_708.x, _708.y), _708.z);
    float _707 = _812;
    float _709 = _705 - _707;
    float _710 = 0.0;
    float _711 = 0.0;
    float _712 = _705;
    if (_709 > 0.0)
    {
        if (_705 == _703.x)
        {
            _710 = 60.0 * mod((_703.y - _703.z) / _709, 6.0);
        }
        else
        {
            if (_705 == _703.y)
            {
                _710 = 60.0 * (((_703.z - _703.x) / _709) + 2.0);
            }
            else
            {
                _710 = 60.0 * (((_703.x - _703.y) / _709) + 4.0);
            }
        }
        float _713;
        if (_705 > 0.0)
        {
            _713 = _709 / _705;
        }
        else
        {
            _713 = 0.0;
        }
        _711 = _713;
    }
    if (_710 < 0.0)
    {
        _710 += 360.0;
    }
    _710 = radians(_710);
    f16vec3 _714 = f16vec3(float16_t(_710), float16_t(_711), float16_t(_712));
    f16vec3 _670 = _714;
    _670 += _552;
    _670.x = mod(_670.x, float16_t(6.28125));
    float16_t _672 = _670.y;
    float16_t _822 = clamp(_672, float16_t(0.0), float16_t(1.0));
    _670.y = _822;
    float16_t _673 = _670.z;
    float16_t _826 = clamp(_673, float16_t(0.0), float16_t(1.0));
    _670.z = _826;
    f16vec3 _674 = _670;
    f16vec3 _831;
    do
    {
        float _832 = float(_674.x);
        float _833 = float(_674.y);
        float _834 = float(_674.z);
        if (_833 == 0.0)
        {
            f16vec3 _835 = f16vec3(float16_t(_834), float16_t(_834), float16_t(_834));
            f16vec3 _966 = f16vec3(pow(vec3(_835), vec3(2.2000000476837158203125)));
            _831 = _966;
            break;
        }
        _832 = degrees(_832) / 60.0;
        int _836 = int(_832);
        float _837 = _832 - float(_836);
        float _838 = _834 * (1.0 - _833);
        float _839 = _834 * (1.0 - (_833 * _837));
        float _840 = _834 * (1.0 - (_833 * (1.0 - _837)));
        _836 %= 6;
        f16vec3 _841;
        if (_836 == 0)
        {
            _841 = f16vec3(float16_t(_834), float16_t(_840), float16_t(_838));
        }
        else
        {
            if (_836 == 1)
            {
                _841 = f16vec3(float16_t(_839), float16_t(_834), float16_t(_838));
            }
            else
            {
                if (_836 == 2)
                {
                    _841 = f16vec3(float16_t(_838), float16_t(_834), float16_t(_840));
                }
                else
                {
                    if (_836 == 3)
                    {
                        _841 = f16vec3(float16_t(_838), float16_t(_839), float16_t(_834));
                    }
                    else
                    {
                        if (_836 == 4)
                        {
                            _841 = f16vec3(float16_t(_840), float16_t(_838), float16_t(_834));
                        }
                        else
                        {
                            _841 = f16vec3(float16_t(_834), float16_t(_838), float16_t(_839));
                        }
                    }
                }
            }
        }
        f16vec3 _842 = _841;
        f16vec3 _972 = f16vec3(pow(vec3(_842), vec3(2.2000000476837158203125)));
        _831 = _972;
        break;
    } while(false);
    f16vec3 _843 = _831;
    f16vec4 _675 = f16vec4(_843, _550.w);
    _544 = _675;
    f16vec4 _566 = _544;
    f16vec4 _978 = _566;
    vec4 _985 = vec4(_978);
    vec4 _979 = _985;
    uint _989 = packUnorm4x8(_979);
    uint _980 = _989;
    _562._m0[_508._m4]._m7 = _980;
}

