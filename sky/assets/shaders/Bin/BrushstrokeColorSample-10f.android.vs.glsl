#version 450

struct _472
{
    float _m0[2];
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
};

struct _476
{
    float _m0[2];
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
};

struct _537
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

layout(set = 0, binding = 4, std430) restrict readonly buffer _478_480
{
    _476 _m0[];
} _480;

layout(set = 0, binding = 5, std430) restrict buffer _539_541
{
    _537 _m0[];
} _541;

layout(set = 0, binding = 0) uniform mediump sampler2D _133;
layout(set = 0, binding = 1) uniform mediump sampler2D _140;
layout(set = 0, binding = 2) uniform mediump sampler2D _147;
layout(set = 0, binding = 3) uniform mediump sampler2D _154;
layout(set = 0, binding = 6) uniform mediump sampler2D _161;
layout(set = 0, binding = 7) uniform mediump sampler2D _168;
layout(set = 0, binding = 8) uniform mediump sampler2D _175;
layout(set = 0, binding = 9) uniform mediump sampler2D _182;

void main()
{
    bool _583 = false;
    int _468 = gl_VertexIndex;
    _472 _474;
    _474._m0[0] = _480._m0[_468]._m0[0];
    _474._m0[1] = _480._m0[_468]._m0[1];
    _474._m1 = _480._m0[_468]._m1;
    _474._m2 = _480._m0[_468]._m2;
    _474._m3 = _480._m0[_468]._m3;
    _474._m4 = _480._m0[_468]._m4;
    float _500[2] = _474._m0;
    vec2 _568 = vec2(_500[0], _500[1]);
    vec2 _499 = _568;
    uint _504 = _474._m1;
    vec3 _507 = vec3(0.0);
    uint _509 = _474._m2;
    vec2 _575 = unpackHalf2x16(_509);
    _507.x = _575.x;
    _507.y = _575.y;
    uint _517 = _474._m3;
    vec2 _579 = unpackHalf2x16(_517);
    _507.z = _579.x;
    vec2 _524 = _499;
    uint _526 = _504;
    _583 = false;
    vec4 _584;
    do
    {
        switch (_526)
        {
            case 0u:
            {
                vec4 _585 = textureLod(_133, _524, 0.0);
                _583 = true;
                _584 = _585;
                break;
            }
            case 1u:
            {
                vec4 _586 = textureLod(_140, _524, 0.0);
                _583 = true;
                _584 = _586;
                break;
            }
            case 2u:
            {
                vec4 _587 = textureLod(_147, _524, 0.0);
                _583 = true;
                _584 = _587;
                break;
            }
            case 3u:
            {
                vec4 _588 = textureLod(_154, _524, 0.0);
                _583 = true;
                _584 = _588;
                break;
            }
            case 4u:
            {
                vec4 _589 = textureLod(_161, _524, 0.0);
                _583 = true;
                _584 = _589;
                break;
            }
            case 5u:
            {
                vec4 _590 = textureLod(_168, _524, 0.0);
                _583 = true;
                _584 = _590;
                break;
            }
            case 6u:
            {
                vec4 _591 = textureLod(_175, _524, 0.0);
                _583 = true;
                _584 = _591;
                break;
            }
            case 7u:
            {
                vec4 _592 = textureLod(_182, _524, 0.0);
                _583 = true;
                _584 = _592;
                break;
            }
            default:
            {
                _583 = true;
                _584 = vec4(1.0, 0.0, 1.0, 1.0);
                break;
            }
        }
        if (_583)
        {
            break;
        }
        break;
    } while(false);
    vec4 _593 = _584;
    vec4 _523 = _593;
    vec4 _529 = _523;
    vec3 _531 = _507;
    vec3 _644 = _529.xyz;
    vec3 _677 = _644;
    vec3 _769 = vec3(pow(vec3(_677), vec3(0.4545454680919647216796875)));
    vec3 _676 = vec3(_769);
    vec3 _679 = _676;
    float _781 = max(max(_679.x, _679.y), _679.z);
    float _678 = _781;
    vec3 _681 = _676;
    float _791 = min(min(_681.x, _681.y), _681.z);
    float _680 = _791;
    float _682 = _678 - _680;
    float _683 = 0.0;
    float _684 = 0.0;
    float _685 = _678;
    if (_682 > 0.0)
    {
        if (_678 == _676.x)
        {
            _683 = 60.0 * mod((_676.y - _676.z) / _682, 6.0);
        }
        else
        {
            if (_678 == _676.y)
            {
                _683 = 60.0 * (((_676.z - _676.x) / _682) + 2.0);
            }
            else
            {
                _683 = 60.0 * (((_676.x - _676.y) / _682) + 4.0);
            }
        }
        float _686;
        if (_678 > 0.0)
        {
            _686 = _682 / _678;
        }
        else
        {
            _686 = 0.0;
        }
        _684 = _686;
    }
    if (_683 < 0.0)
    {
        _683 += 360.0;
    }
    _683 = radians(_683);
    vec3 _687 = vec3(_683, _684, _685);
    vec3 _643 = _687;
    _643 += _531;
    _643.x = mod(_643.x, 6.283185482025146484375);
    float _645 = _643.y;
    float _801 = clamp(_645, 0.0, 1.0);
    _643.y = _801;
    float _646 = _643.z;
    float _805 = clamp(_646, 0.0, 1.0);
    _643.z = _805;
    vec3 _647 = _643;
    vec3 _810;
    do
    {
        float _811 = _647.x;
        float _812 = _647.y;
        float _813 = _647.z;
        if (_812 == 0.0)
        {
            vec3 _814 = vec3(_813, _813, _813);
            vec3 _921 = vec3(pow(vec3(_814), vec3(2.2000000476837158203125)));
            _810 = _921;
            break;
        }
        _811 = degrees(_811) / 60.0;
        int _815 = int(_811);
        float _816 = _811 - float(_815);
        float _817 = _813 * (1.0 - _812);
        float _818 = _813 * (1.0 - (_812 * _816));
        float _819 = _813 * (1.0 - (_812 * (1.0 - _816)));
        _815 %= 6;
        vec3 _820;
        if (_815 == 0)
        {
            _820 = vec3(_813, _819, _817);
        }
        else
        {
            if (_815 == 1)
            {
                _820 = vec3(_818, _813, _817);
            }
            else
            {
                if (_815 == 2)
                {
                    _820 = vec3(_817, _813, _819);
                }
                else
                {
                    if (_815 == 3)
                    {
                        _820 = vec3(_817, _818, _813);
                    }
                    else
                    {
                        if (_815 == 4)
                        {
                            _820 = vec3(_819, _817, _813);
                        }
                        else
                        {
                            _820 = vec3(_813, _817, _818);
                        }
                    }
                }
            }
        }
        vec3 _821 = _820;
        vec3 _933 = vec3(pow(vec3(_821), vec3(2.2000000476837158203125)));
        _810 = _933;
        break;
    } while(false);
    vec3 _822 = _810;
    vec4 _648 = vec4(_822, _529.w);
    _523 = _648;
    vec4 _545 = _523;
    vec4 _945 = _545;
    uint _950 = packUnorm4x8(_945);
    uint _946 = _950;
    _541._m0[_474._m4]._m7 = _946;
}

