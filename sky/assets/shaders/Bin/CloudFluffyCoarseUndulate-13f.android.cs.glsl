#version 450
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;

layout(set = 0, binding = 0, std140) uniform _84_86
{
    vec4 _m0;
    vec4 _m1;
    vec4 _m2;
    vec3 _m3;
    float _m4;
    vec3 _m5;
    float _m6;
    vec3 _m7;
    float _m8;
    vec3 _m9;
    float _m10;
    uvec2 _m11;
    float _m12;
    float _m13;
} _86;

layout(set = 0, binding = 1, std140) uniform _288_290
{
    vec3 _m0;
    float _m1;
    vec3 _m2;
    float _m3;
    vec3 _m4;
    float _m5;
    vec3 _m6;
    float _m7;
    mat4 _m8;
    vec4 _m9;
    vec4 _m10;
} _290;

layout(set = 0, binding = 10) uniform mediump sampler2D _73;
layout(set = 0, binding = 8) uniform sampler3D _221;
layout(set = 0, binding = 9) uniform mediump sampler3D _235;
layout(set = 0, binding = 3) uniform sampler3D _275;
layout(set = 0, binding = 14, r32f) uniform restrict writeonly image2D _464;
layout(set = 0, binding = 13, r32f) uniform restrict readonly image2D _524;
layout(set = 0, binding = 12, r32f) uniform restrict readonly image2D _542;

void main()
{
    bool _766 = false;
    do
    {
        uvec2 _461 = uvec2(imageSize(_464));
        uvec2 _469 = gl_GlobalInvocationID.xy;
        bool _480 = _469.x >= _461.x;
        bool _489;
        if (!_480)
        {
            _489 = _469.y >= _461.y;
        }
        else
        {
            _489 = _480;
        }
        if (_489)
        {
            break;
        }
        uvec2 _494 = _469;
        uvec2 _496 = _461;
        vec2 _644 = vec2(_496);
        vec2 _645 = (vec2(_494) + vec2(0.5)) / _644;
        vec3 _646 = (_290._m2 + (_290._m4 * _645.x)) + (_290._m6 * _645.y);
        float _647 = (0.5 * length(_290._m4 + _290._m6)) / length(_644);
        vec4 _648 = vec4(_646, _647);
        vec4 _493 = _648;
        float _499 = inversesqrt(dot(_493.xyz, _493.xyz));
        vec4 _507 = _493;
        vec3 _509 = _507.xyz * _499;
        _493.x = _509.x;
        _493.y = _509.y;
        _493.z = _509.z;
        uvec2 _516 = gl_GlobalInvocationID.xy / uvec2(2u);
        float _532 = max(imageLoad(_524, ivec2(_516)).x, 1.0000000116860974230803549289703e-07);
        float _687 = 1.0 / _532;
        float _521 = (_290._m1 * _687) / _499;
        _516 = gl_GlobalInvocationID.xy;
        float _549 = max(imageLoad(_542, ivec2(_516)).x, 1.0000000116860974230803549289703e-07);
        float _691 = 1.0 / _549;
        float _539 = ((_290._m1 * _691) / _499) + 10.0;
        vec3 _695 = _290._m0;
        vec3 _556 = _695;
        vec3 _561 = _556;
        vec4 _563 = _493;
        float _565 = _521;
        float _567 = _539;
        vec3 _699 = (_86._m7 + vec3(_86._m1.x)) - _561;
        vec3 _700 = (_699 + _86._m9) - vec3(_86._m1.x * 2.0);
        vec3 _701 = vec3(1.0) / _563.xyz;
        vec3 _702 = _699 * _701;
        vec3 _703 = _700 * _701;
        vec3 _704 = min(_702, _703);
        vec3 _705 = max(_702, _703);
        float _706 = min(_705.x, min(_705.y, _705.z));
        float _707 = max(_704.x, max(_704.y, _704.z));
        vec2 _708 = vec2(max(_565, _707), min(_567, _706));
        vec2 _560 = _708;
        vec3 _571 = _556;
        vec4 _573 = _493;
        vec2 _575 = _560;
        _766 = false;
        float _767;
        do
        {
            float _768 = _575.x;
            float _822;
            while (_768 < _575.y)
            {
                vec3 _770 = _571 + (_573.xyz * _768);
                do
                {
                    vec3 _824 = _770;
                    vec2 _905 = vec2((0.093249998986721038818359375 * _86._m12) + (0.12999999523162841796875 * (_824.y + (0.20000000298023223876953125 * _824.x))), (0.18649999797344207763671875 * _86._m12) + (0.064999997615814208984375 * ((-_824.z) + (0.20000000298023223876953125 * _824.y))));
                    vec2 _906 = vec2((0.3729999959468841552734375 * _86._m12) + (0.0324999988079071044921875 * ((-_824.x) + (0.20000000298023223876953125 * _824.z))), (1.3519999980926513671875 * _86._m12) + (_824.y * 0.20000000298023223876953125));
                    vec2 _908 = _905;
                    _908 *= 0.15915493667125701904296875;
                    vec2 _990 = textureLod(_73, _908, 0.0).xy;
                    vec2 _991 = _990;
                    vec2 _907 = _991;
                    vec2 _910 = _906;
                    _910 *= 0.15915493667125701904296875;
                    vec2 _1000 = textureLod(_73, _910, 0.0).xy;
                    vec2 _1001 = _1000;
                    vec2 _909 = _1001;
                    float _911 = ((0.25 * _907.x) + (0.5 * _907.y)) + (1.0 * _909.x);
                    _824.y += ((_86._m10 * (_911 - 1.0)) * 2.0);
                    float _912 = ((-_86._m10) * 0.300000011920928955078125) * _909.y;
                    _770 = _824;
                    float _823 = _912;
                    vec3 _825 = (_770 - _86._m7) * 0.0625;
                    vec3 _826 = floor(_825);
                    vec3 _827 = (_826 + vec3(0.5)) * (vec3(16.0) / _86._m9);
                    vec2 _828 = textureLod(_221, _827, 0.0).xy;
                    if ((_828.x + _828.y) == 0.0)
                    {
                        float _829 = textureLod(_235, _827, 0.0).x * 0.800000011920928955078125;
                        _822 = _829;
                        break;
                    }
                    vec3 _830 = ((_825 - _826) * (1.0 - _86._m1.z)) + vec3(0.5 * _86._m1.z);
                    vec3 _831 = vec3(((_828 * 255.0) + _830.xy) * _86._m8, _830.z);
                    _823 += (textureLod(_275, _831, 0.0).x * 5.0);
                    _822 = _823;
                    break;
                } while(false);
                float _832 = _822;
                float _769 = _832;
                _768 += _769;
                float _771 = abs(_768) * _573.w;
                _771 += (_86._m4 * 1.39999997615814208984375);
                if (_769 <= _771)
                {
                    float _772 = _768 - _771;
                    float _1010 = max(_772, 0.0);
                    _766 = true;
                    _767 = _1010;
                    break;
                }
            }
            if (_766)
            {
                break;
            }
            _766 = true;
            _767 = _768;
            break;
        } while(false);
        float _773 = _767;
        float _570 = _773;
        bool _583 = _570 < _560.y;
        float _590;
        if (_583)
        {
            float _600 = max((_570 * _499) / _290._m1, 1.0000000116860974230803549289703e-07);
            float _1014 = 1.0 / _600;
            _590 = _1014;
        }
        else
        {
            _590 = 0.0;
        }
        float _588 = _590;
        imageStore(_464, ivec2(_469), vec4(_588));
        break;
    } while(false);
}

