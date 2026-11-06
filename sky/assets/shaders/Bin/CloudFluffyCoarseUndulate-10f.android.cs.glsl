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
    bool _764 = false;
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
        vec2 _642 = vec2(_496);
        vec2 _643 = (vec2(_494) + vec2(0.5)) / _642;
        vec3 _644 = (_290._m2 + (_290._m4 * _643.x)) + (_290._m6 * _643.y);
        float _645 = (0.5 * length(_290._m4 + _290._m6)) / length(_642);
        vec4 _646 = vec4(_644, _645);
        vec4 _493 = _646;
        float _499 = inversesqrt(dot(_493.xyz, _493.xyz));
        vec4 _507 = _493;
        vec3 _509 = _507.xyz * _499;
        _493.x = _509.x;
        _493.y = _509.y;
        _493.z = _509.z;
        uvec2 _516 = gl_GlobalInvocationID.xy / uvec2(2u);
        float _532 = max(imageLoad(_524, ivec2(_516)).x, 1.0000000116860974230803549289703e-07);
        float _685 = 1.0 / _532;
        float _521 = (_290._m1 * _685) / _499;
        _516 = gl_GlobalInvocationID.xy;
        float _549 = max(imageLoad(_542, ivec2(_516)).x, 1.0000000116860974230803549289703e-07);
        float _689 = 1.0 / _549;
        float _539 = ((_290._m1 * _689) / _499) + 10.0;
        vec3 _693 = _290._m0;
        vec3 _556 = _693;
        vec3 _561 = _556;
        vec4 _563 = _493;
        float _565 = _521;
        float _567 = _539;
        vec3 _697 = (_86._m7 + vec3(_86._m1.x)) - _561;
        vec3 _698 = (_697 + _86._m9) - vec3(_86._m1.x * 2.0);
        vec3 _699 = vec3(1.0) / _563.xyz;
        vec3 _700 = _697 * _699;
        vec3 _701 = _698 * _699;
        vec3 _702 = min(_700, _701);
        vec3 _703 = max(_700, _701);
        float _704 = min(_703.x, min(_703.y, _703.z));
        float _705 = max(_702.x, max(_702.y, _702.z));
        vec2 _706 = vec2(max(_565, _705), min(_567, _704));
        vec2 _560 = _706;
        vec3 _571 = _556;
        vec4 _573 = _493;
        vec2 _575 = _560;
        _764 = false;
        float _765;
        do
        {
            float _766 = _575.x;
            float _820;
            while (_766 < _575.y)
            {
                vec3 _768 = _571 + (_573.xyz * _766);
                do
                {
                    vec3 _822 = _768;
                    vec2 _903 = vec2((0.093249998986721038818359375 * _86._m12) + (0.12999999523162841796875 * (_822.y + (0.20000000298023223876953125 * _822.x))), (0.18649999797344207763671875 * _86._m12) + (0.064999997615814208984375 * ((-_822.z) + (0.20000000298023223876953125 * _822.y))));
                    vec2 _904 = vec2((0.3729999959468841552734375 * _86._m12) + (0.0324999988079071044921875 * ((-_822.x) + (0.20000000298023223876953125 * _822.z))), (1.3519999980926513671875 * _86._m12) + (_822.y * 0.20000000298023223876953125));
                    vec2 _906 = _903;
                    _906 *= 0.15915493667125701904296875;
                    vec2 _988 = textureLod(_73, _906, 0.0).xy;
                    vec2 _989 = _988;
                    vec2 _905 = _989;
                    vec2 _908 = _904;
                    _908 *= 0.15915493667125701904296875;
                    vec2 _998 = textureLod(_73, _908, 0.0).xy;
                    vec2 _999 = _998;
                    vec2 _907 = _999;
                    float _909 = ((0.25 * _905.x) + (0.5 * _905.y)) + (1.0 * _907.x);
                    _822.y += ((_86._m10 * (_909 - 1.0)) * 2.0);
                    float _910 = ((-_86._m10) * 0.300000011920928955078125) * _907.y;
                    _768 = _822;
                    float _821 = _910;
                    vec3 _823 = (_768 - _86._m7) * 0.0625;
                    vec3 _824 = floor(_823);
                    vec3 _825 = (_824 + vec3(0.5)) * (vec3(16.0) / _86._m9);
                    vec2 _826 = textureLod(_221, _825, 0.0).xy;
                    if ((_826.x + _826.y) == 0.0)
                    {
                        float _827 = textureLod(_235, _825, 0.0).x * 0.800000011920928955078125;
                        _820 = _827;
                        break;
                    }
                    vec3 _828 = ((_823 - _824) * (1.0 - _86._m1.z)) + vec3(0.5 * _86._m1.z);
                    vec3 _829 = vec3(((_826 * 255.0) + _828.xy) * _86._m8, _828.z);
                    _821 += (textureLod(_275, _829, 0.0).x * 5.0);
                    _820 = _821;
                    break;
                } while(false);
                float _830 = _820;
                float _767 = _830;
                _766 += _767;
                float _769 = abs(_766) * _573.w;
                _769 += (_86._m4 * 1.39999997615814208984375);
                if (_767 <= _769)
                {
                    float _770 = _766 - _769;
                    float _1008 = max(_770, 0.0);
                    _764 = true;
                    _765 = _1008;
                    break;
                }
            }
            if (_764)
            {
                break;
            }
            _764 = true;
            _765 = _766;
            break;
        } while(false);
        float _771 = _765;
        float _570 = _771;
        bool _583 = _570 < _560.y;
        float _590;
        if (_583)
        {
            float _600 = max((_570 * _499) / _290._m1, 1.0000000116860974230803549289703e-07);
            float _1012 = 1.0 / _600;
            _590 = _1012;
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

