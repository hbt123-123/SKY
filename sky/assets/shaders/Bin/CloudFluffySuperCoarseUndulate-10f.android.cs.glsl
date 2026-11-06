#version 450
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;

layout(set = 0, binding = 0, std140) uniform _105_107
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
} _107;

layout(set = 0, binding = 1, std140) uniform _306_308
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
} _308;

layout(set = 0, binding = 10) uniform mediump sampler2D _94;
layout(set = 0, binding = 8) uniform sampler3D _239;
layout(set = 0, binding = 9) uniform mediump sampler3D _253;
layout(set = 0, binding = 3) uniform sampler3D _293;
layout(set = 0, binding = 14, r32f) uniform restrict writeonly image2D _481;
layout(set = 0, binding = 12, r32f) uniform restrict readonly image2D _544;

void main()
{
    bool _808 = false;
    do
    {
        uvec2 _478 = uvec2(imageSize(_481));
        uvec2 _486 = gl_GlobalInvocationID.xy;
        bool _497 = _486.x >= _478.x;
        bool _506;
        if (!_497)
        {
            _506 = _486.y >= _478.y;
        }
        else
        {
            _506 = _497;
        }
        if (_506)
        {
            break;
        }
        uvec2 _511 = _486;
        uvec2 _513 = _478;
        vec2 _677 = vec2(_513);
        vec2 _678 = (vec2(_511) + vec2(0.5)) / _677;
        vec3 _679 = (_308._m2 + (_308._m4 * _678.x)) + (_308._m6 * _678.y);
        float _680 = (0.5 * length(_308._m4 + _308._m6)) / length(_677);
        vec4 _681 = vec4(_679, _680);
        vec4 _510 = _681;
        float _516 = inversesqrt(dot(_510.xyz, _510.xyz));
        vec4 _524 = _510;
        vec3 _526 = _524.xyz * _516;
        _510.x = _526.x;
        _510.y = _526.y;
        _510.z = _526.z;
        float _533 = _308._m1 / _516;
        uvec2 _538 = gl_GlobalInvocationID.xy * uvec2(2u);
        vec4 _543;
        _543.x = imageLoad(_544, ivec2(_538)).x;
        _543.y = imageLoad(_544, ivec2(_538) + ivec2(1, 0)).x;
        _543.z = imageLoad(_544, ivec2(_538) + ivec2(0, 1)).x;
        _543.w = imageLoad(_544, ivec2(_538) + ivec2(1)).x;
        vec4 _578 = _543;
        float _720 = min(min(_578.x, _578.y), min(_578.z, _578.w));
        float _583 = max(_720, 1.0000000116860974230803549289703e-07);
        float _733 = 1.0 / _583;
        float _575 = ((_308._m1 * _733) / _516) + 10.0;
        vec3 _737 = _308._m0;
        vec3 _590 = _737;
        vec3 _595 = _590;
        vec4 _597 = _510;
        float _599 = _533;
        float _601 = _575;
        vec3 _741 = (_107._m7 + vec3(_107._m1.x)) - _595;
        vec3 _742 = (_741 + _107._m9) - vec3(_107._m1.x * 2.0);
        vec3 _743 = vec3(1.0) / _597.xyz;
        vec3 _744 = _741 * _743;
        vec3 _745 = _742 * _743;
        vec3 _746 = min(_744, _745);
        vec3 _747 = max(_744, _745);
        float _748 = min(_747.x, min(_747.y, _747.z));
        float _749 = max(_746.x, max(_746.y, _746.z));
        vec2 _750 = vec2(max(_599, _749), min(_601, _748));
        vec2 _594 = _750;
        vec3 _605 = _590;
        vec4 _607 = _510;
        vec2 _609 = _594;
        _808 = false;
        float _809;
        do
        {
            float _810 = _609.x;
            float _864;
            while (_810 < _609.y)
            {
                vec3 _812 = _605 + (_607.xyz * _810);
                do
                {
                    vec3 _866 = _812;
                    vec2 _947 = vec2((0.093249998986721038818359375 * _107._m12) + (0.12999999523162841796875 * (_866.y + (0.20000000298023223876953125 * _866.x))), (0.18649999797344207763671875 * _107._m12) + (0.064999997615814208984375 * ((-_866.z) + (0.20000000298023223876953125 * _866.y))));
                    vec2 _948 = vec2((0.3729999959468841552734375 * _107._m12) + (0.0324999988079071044921875 * ((-_866.x) + (0.20000000298023223876953125 * _866.z))), (1.3519999980926513671875 * _107._m12) + (_866.y * 0.20000000298023223876953125));
                    vec2 _950 = _947;
                    _950 *= 0.15915493667125701904296875;
                    vec2 _1032 = textureLod(_94, _950, 0.0).xy;
                    vec2 _1033 = _1032;
                    vec2 _949 = _1033;
                    vec2 _952 = _948;
                    _952 *= 0.15915493667125701904296875;
                    vec2 _1042 = textureLod(_94, _952, 0.0).xy;
                    vec2 _1043 = _1042;
                    vec2 _951 = _1043;
                    float _953 = ((0.25 * _949.x) + (0.5 * _949.y)) + (1.0 * _951.x);
                    _866.y += ((_107._m10 * (_953 - 1.0)) * 2.0);
                    float _954 = ((-_107._m10) * 0.300000011920928955078125) * _951.y;
                    _812 = _866;
                    float _865 = _954;
                    vec3 _867 = (_812 - _107._m7) * 0.0625;
                    vec3 _868 = floor(_867);
                    vec3 _869 = (_868 + vec3(0.5)) * (vec3(16.0) / _107._m9);
                    vec2 _870 = textureLod(_239, _869, 0.0).xy;
                    if ((_870.x + _870.y) == 0.0)
                    {
                        float _871 = textureLod(_253, _869, 0.0).x * 0.800000011920928955078125;
                        _864 = _871;
                        break;
                    }
                    vec3 _872 = ((_867 - _868) * (1.0 - _107._m1.z)) + vec3(0.5 * _107._m1.z);
                    vec3 _873 = vec3(((_870 * 255.0) + _872.xy) * _107._m8, _872.z);
                    _865 += (textureLod(_293, _873, 0.0).x * 5.0);
                    _864 = _865;
                    break;
                } while(false);
                float _874 = _864;
                float _811 = _874;
                _810 += _811;
                float _813 = abs(_810) * _607.w;
                _813 += (_107._m4 * 1.39999997615814208984375);
                if (_811 <= _813)
                {
                    float _814 = _810 - _813;
                    float _1052 = max(_814, 0.0);
                    _808 = true;
                    _809 = _1052;
                    break;
                }
            }
            if (_808)
            {
                break;
            }
            _808 = true;
            _809 = _810;
            break;
        } while(false);
        float _815 = _809;
        float _604 = _815;
        bool _617 = _604 < _594.y;
        float _624;
        if (_617)
        {
            float _634 = max((_604 * _516) / _308._m1, 1.0000000116860974230803549289703e-07);
            float _1056 = 1.0 / _634;
            _624 = _1056;
        }
        else
        {
            _624 = 0.0;
        }
        float _622 = _624;
        imageStore(_481, ivec2(_486), vec4(_622));
        break;
    } while(false);
}

