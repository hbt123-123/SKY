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

struct _571
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

layout(set = 0, binding = 5, std430) restrict buffer _573_575
{
    _571 _m0[];
} _575;

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
    bool _631 = false;
    int _502 = gl_VertexIndex;
    _506 _508;
    _508._m0[0] = _514._m0[_502]._m0[0];
    _508._m0[1] = _514._m0[_502]._m0[1];
    _508._m1 = _514._m0[_502]._m1;
    _508._m2 = _514._m0[_502]._m2;
    _508._m3 = _514._m0[_502]._m3;
    _508._m4 = _514._m0[_502]._m4;
    float _534[2] = _508._m0;
    vec2 _603 = vec2(_534[0], _534[1]);
    vec2 _533 = _603;
    uint _538 = _508._m1;
    f16vec3 _541 = f16vec3(float16_t(0.0));
    uint _543 = _508._m2;
    vec2 _610 = unpackHalf2x16(_543);
    f16vec2 _617 = f16vec2(_610);
    f16vec2 _612 = _617;
    _541.x = _612.x;
    _541.y = _612.y;
    uint _551 = _508._m3;
    vec2 _621 = unpackHalf2x16(_551);
    f16vec2 _627 = f16vec2(_621);
    f16vec2 _622 = _627;
    _541.z = _622.x;
    vec2 _558 = _533;
    uint _560 = _538;
    _631 = false;
    f16vec4 _632;
    do
    {
        switch (_560)
        {
            case 0u:
            {
                _631 = true;
                _632 = f16vec4(textureLod(_161, _558, 0.0));
                break;
            }
            case 1u:
            {
                _631 = true;
                _632 = f16vec4(textureLod(_168, _558, 0.0));
                break;
            }
            case 2u:
            {
                _631 = true;
                _632 = f16vec4(textureLod(_174, _558, 0.0));
                break;
            }
            case 3u:
            {
                _631 = true;
                _632 = f16vec4(textureLod(_180, _558, 0.0));
                break;
            }
            case 4u:
            {
                _631 = true;
                _632 = f16vec4(textureLod(_186, _558, 0.0));
                break;
            }
            case 5u:
            {
                _631 = true;
                _632 = f16vec4(textureLod(_192, _558, 0.0));
                break;
            }
            case 6u:
            {
                _631 = true;
                _632 = f16vec4(textureLod(_198, _558, 0.0));
                break;
            }
            case 7u:
            {
                _631 = true;
                _632 = f16vec4(textureLod(_204, _558, 0.0));
                break;
            }
            default:
            {
                _631 = true;
                _632 = f16vec4(float16_t(1.0), float16_t(0.0), float16_t(1.0), float16_t(1.0));
                break;
            }
        }
        if (_631)
        {
            break;
        }
        break;
    } while(false);
    f16vec4 _633 = _632;
    f16vec4 _557 = _633;
    f16vec4 _563 = _557;
    f16vec3 _565 = _541;
    f16vec3 _684 = _563.xyz;
    f16vec3 _717 = _684;
    f16vec3 _809 = f16vec3(pow(vec3(_717), vec3(0.4545454680919647216796875)));
    vec3 _716 = vec3(_809);
    vec3 _719 = _716;
    float _815 = max(max(_719.x, _719.y), _719.z);
    float _718 = _815;
    vec3 _721 = _716;
    float _825 = min(min(_721.x, _721.y), _721.z);
    float _720 = _825;
    float _722 = _718 - _720;
    float _723 = 0.0;
    float _724 = 0.0;
    float _725 = _718;
    if (_722 > 0.0)
    {
        if (_718 == _716.x)
        {
            _723 = 60.0 * mod((_716.y - _716.z) / _722, 6.0);
        }
        else
        {
            if (_718 == _716.y)
            {
                _723 = 60.0 * (((_716.z - _716.x) / _722) + 2.0);
            }
            else
            {
                _723 = 60.0 * (((_716.x - _716.y) / _722) + 4.0);
            }
        }
        float _726;
        if (_718 > 0.0)
        {
            _726 = _722 / _718;
        }
        else
        {
            _726 = 0.0;
        }
        _724 = _726;
    }
    if (_723 < 0.0)
    {
        _723 += 360.0;
    }
    _723 = radians(_723);
    f16vec3 _727 = f16vec3(float16_t(_723), float16_t(_724), float16_t(_725));
    f16vec3 _683 = _727;
    _683 += _565;
    _683.x = mod(_683.x, float16_t(6.28125));
    float16_t _685 = _683.y;
    float16_t _835 = clamp(_685, float16_t(0.0), float16_t(1.0));
    _683.y = _835;
    float16_t _686 = _683.z;
    float16_t _839 = clamp(_686, float16_t(0.0), float16_t(1.0));
    _683.z = _839;
    f16vec3 _687 = _683;
    f16vec3 _844;
    do
    {
        float _845 = float(_687.x);
        float _846 = float(_687.y);
        float _847 = float(_687.z);
        if (_846 == 0.0)
        {
            f16vec3 _848 = f16vec3(float16_t(_847), float16_t(_847), float16_t(_847));
            f16vec3 _979 = f16vec3(pow(vec3(_848), vec3(2.2000000476837158203125)));
            _844 = _979;
            break;
        }
        _845 = degrees(_845) / 60.0;
        int _849 = int(_845);
        float _850 = _845 - float(_849);
        float _851 = _847 * (1.0 - _846);
        float _852 = _847 * (1.0 - (_846 * _850));
        float _853 = _847 * (1.0 - (_846 * (1.0 - _850)));
        _849 %= 6;
        f16vec3 _854;
        if (_849 == 0)
        {
            _854 = f16vec3(float16_t(_847), float16_t(_853), float16_t(_851));
        }
        else
        {
            if (_849 == 1)
            {
                _854 = f16vec3(float16_t(_852), float16_t(_847), float16_t(_851));
            }
            else
            {
                if (_849 == 2)
                {
                    _854 = f16vec3(float16_t(_851), float16_t(_847), float16_t(_853));
                }
                else
                {
                    if (_849 == 3)
                    {
                        _854 = f16vec3(float16_t(_851), float16_t(_852), float16_t(_847));
                    }
                    else
                    {
                        if (_849 == 4)
                        {
                            _854 = f16vec3(float16_t(_853), float16_t(_851), float16_t(_847));
                        }
                        else
                        {
                            _854 = f16vec3(float16_t(_847), float16_t(_851), float16_t(_852));
                        }
                    }
                }
            }
        }
        f16vec3 _855 = _854;
        f16vec3 _985 = f16vec3(pow(vec3(_855), vec3(2.2000000476837158203125)));
        _844 = _985;
        break;
    } while(false);
    f16vec3 _856 = _844;
    f16vec4 _688 = f16vec4(_856, _563.w);
    _557 = _688;
    f16vec4 _579 = _557;
    f16vec4 _991 = _579;
    vec4 _998 = vec4(_991);
    vec4 _992 = _998;
    uint _1002 = packUnorm4x8(_992);
    uint _993 = _1002;
    _575._m0[_508._m4]._m7 = _993;
}

