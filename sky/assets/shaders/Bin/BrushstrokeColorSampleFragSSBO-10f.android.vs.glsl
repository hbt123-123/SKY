#version 450

invariant gl_Position;

struct _466
{
    float _m0[2];
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
};

struct _470
{
    float _m0[2];
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
};

layout(set = 0, binding = 4, std430) restrict readonly buffer _472_474
{
    _470 _m0[];
} _474;

layout(set = 0, binding = 0) uniform mediump sampler2D _127;
layout(set = 0, binding = 1) uniform mediump sampler2D _134;
layout(set = 0, binding = 2) uniform mediump sampler2D _141;
layout(set = 0, binding = 3) uniform mediump sampler2D _148;
layout(set = 0, binding = 5) uniform mediump sampler2D _155;
layout(set = 0, binding = 6) uniform mediump sampler2D _162;
layout(set = 0, binding = 7) uniform mediump sampler2D _169;
layout(set = 0, binding = 8) uniform mediump sampler2D _176;

layout(location = 0) flat out uint _529;
layout(location = 1) flat out vec4 _533;

void main()
{
    bool _572 = false;
    int _462 = gl_VertexIndex;
    _466 _468;
    _468._m0[0] = _474._m0[_462]._m0[0];
    _468._m0[1] = _474._m0[_462]._m0[1];
    _468._m1 = _474._m0[_462]._m1;
    _468._m2 = _474._m0[_462]._m2;
    _468._m3 = _474._m0[_462]._m3;
    _468._m4 = _474._m0[_462]._m4;
    float _494[2] = _468._m0;
    vec2 _557 = vec2(_494[0], _494[1]);
    vec2 _493 = _557;
    uint _498 = _468._m1;
    vec3 _501 = vec3(0.0);
    uint _503 = _468._m2;
    vec2 _564 = unpackHalf2x16(_503);
    _501.x = _564.x;
    _501.y = _564.y;
    uint _511 = _468._m3;
    vec2 _568 = unpackHalf2x16(_511);
    _501.z = _568.x;
    vec2 _518 = _493;
    uint _520 = _498;
    _572 = false;
    vec4 _573;
    do
    {
        switch (_520)
        {
            case 0u:
            {
                vec4 _574 = textureLod(_127, _518, 0.0);
                _572 = true;
                _573 = _574;
                break;
            }
            case 1u:
            {
                vec4 _575 = textureLod(_134, _518, 0.0);
                _572 = true;
                _573 = _575;
                break;
            }
            case 2u:
            {
                vec4 _576 = textureLod(_141, _518, 0.0);
                _572 = true;
                _573 = _576;
                break;
            }
            case 3u:
            {
                vec4 _577 = textureLod(_148, _518, 0.0);
                _572 = true;
                _573 = _577;
                break;
            }
            case 4u:
            {
                vec4 _578 = textureLod(_155, _518, 0.0);
                _572 = true;
                _573 = _578;
                break;
            }
            case 5u:
            {
                vec4 _579 = textureLod(_162, _518, 0.0);
                _572 = true;
                _573 = _579;
                break;
            }
            case 6u:
            {
                vec4 _580 = textureLod(_169, _518, 0.0);
                _572 = true;
                _573 = _580;
                break;
            }
            case 7u:
            {
                vec4 _581 = textureLod(_176, _518, 0.0);
                _572 = true;
                _573 = _581;
                break;
            }
            default:
            {
                _572 = true;
                _573 = vec4(1.0, 0.0, 1.0, 1.0);
                break;
            }
        }
        if (_572)
        {
            break;
        }
        break;
    } while(false);
    vec4 _582 = _573;
    vec4 _517 = _582;
    vec4 _523 = _517;
    vec3 _525 = _501;
    vec3 _633 = _523.xyz;
    vec3 _666 = _633;
    vec3 _758 = vec3(pow(vec3(_666), vec3(0.4545454680919647216796875)));
    vec3 _665 = vec3(_758);
    vec3 _668 = _665;
    float _770 = max(max(_668.x, _668.y), _668.z);
    float _667 = _770;
    vec3 _670 = _665;
    float _780 = min(min(_670.x, _670.y), _670.z);
    float _669 = _780;
    float _671 = _667 - _669;
    float _672 = 0.0;
    float _673 = 0.0;
    float _674 = _667;
    if (_671 > 0.0)
    {
        if (_667 == _665.x)
        {
            _672 = 60.0 * mod((_665.y - _665.z) / _671, 6.0);
        }
        else
        {
            if (_667 == _665.y)
            {
                _672 = 60.0 * (((_665.z - _665.x) / _671) + 2.0);
            }
            else
            {
                _672 = 60.0 * (((_665.x - _665.y) / _671) + 4.0);
            }
        }
        float _675;
        if (_667 > 0.0)
        {
            _675 = _671 / _667;
        }
        else
        {
            _675 = 0.0;
        }
        _673 = _675;
    }
    if (_672 < 0.0)
    {
        _672 += 360.0;
    }
    _672 = radians(_672);
    vec3 _676 = vec3(_672, _673, _674);
    vec3 _632 = _676;
    _632 += _525;
    _632.x = mod(_632.x, 6.283185482025146484375);
    float _634 = _632.y;
    float _790 = clamp(_634, 0.0, 1.0);
    _632.y = _790;
    float _635 = _632.z;
    float _794 = clamp(_635, 0.0, 1.0);
    _632.z = _794;
    vec3 _636 = _632;
    vec3 _799;
    do
    {
        float _800 = _636.x;
        float _801 = _636.y;
        float _802 = _636.z;
        if (_801 == 0.0)
        {
            vec3 _803 = vec3(_802, _802, _802);
            vec3 _910 = vec3(pow(vec3(_803), vec3(2.2000000476837158203125)));
            _799 = _910;
            break;
        }
        _800 = degrees(_800) / 60.0;
        int _804 = int(_800);
        float _805 = _800 - float(_804);
        float _806 = _802 * (1.0 - _801);
        float _807 = _802 * (1.0 - (_801 * _805));
        float _808 = _802 * (1.0 - (_801 * (1.0 - _805)));
        _804 %= 6;
        vec3 _809;
        if (_804 == 0)
        {
            _809 = vec3(_802, _808, _806);
        }
        else
        {
            if (_804 == 1)
            {
                _809 = vec3(_807, _802, _806);
            }
            else
            {
                if (_804 == 2)
                {
                    _809 = vec3(_806, _802, _808);
                }
                else
                {
                    if (_804 == 3)
                    {
                        _809 = vec3(_806, _807, _802);
                    }
                    else
                    {
                        if (_804 == 4)
                        {
                            _809 = vec3(_808, _806, _802);
                        }
                        else
                        {
                            _809 = vec3(_802, _806, _807);
                        }
                    }
                }
            }
        }
        vec3 _810 = _809;
        vec3 _922 = vec3(pow(vec3(_810), vec3(2.2000000476837158203125)));
        _799 = _922;
        break;
    } while(false);
    vec3 _811 = _799;
    vec4 _637 = vec4(_811, _523.w);
    _517 = _637;
    _529 = _468._m4;
    _533 = _517;
    gl_Position = vec4(0.0, 0.0, 1.0, 1.0);
    float _537 = 1.0;
    gl_PointSize = _537;
}

