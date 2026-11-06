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
    bool _810 = false;
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
        vec2 _679 = vec2(_513);
        vec2 _680 = (vec2(_511) + vec2(0.5)) / _679;
        vec3 _681 = (_308._m2 + (_308._m4 * _680.x)) + (_308._m6 * _680.y);
        float _682 = (0.5 * length(_308._m4 + _308._m6)) / length(_679);
        vec4 _683 = vec4(_681, _682);
        vec4 _510 = _683;
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
        float _722 = min(min(_578.x, _578.y), min(_578.z, _578.w));
        float _583 = max(_722, 1.0000000116860974230803549289703e-07);
        float _735 = 1.0 / _583;
        float _575 = ((_308._m1 * _735) / _516) + 10.0;
        vec3 _739 = _308._m0;
        vec3 _590 = _739;
        vec3 _595 = _590;
        vec4 _597 = _510;
        float _599 = _533;
        float _601 = _575;
        vec3 _743 = (_107._m7 + vec3(_107._m1.x)) - _595;
        vec3 _744 = (_743 + _107._m9) - vec3(_107._m1.x * 2.0);
        vec3 _745 = vec3(1.0) / _597.xyz;
        vec3 _746 = _743 * _745;
        vec3 _747 = _744 * _745;
        vec3 _748 = min(_746, _747);
        vec3 _749 = max(_746, _747);
        float _750 = min(_749.x, min(_749.y, _749.z));
        float _751 = max(_748.x, max(_748.y, _748.z));
        vec2 _752 = vec2(max(_599, _751), min(_601, _750));
        vec2 _594 = _752;
        vec3 _605 = _590;
        vec4 _607 = _510;
        vec2 _609 = _594;
        _810 = false;
        float _811;
        do
        {
            float _812 = _609.x;
            float _866;
            while (_812 < _609.y)
            {
                vec3 _814 = _605 + (_607.xyz * _812);
                do
                {
                    vec3 _868 = _814;
                    vec2 _949 = vec2((0.093249998986721038818359375 * _107._m12) + (0.12999999523162841796875 * (_868.y + (0.20000000298023223876953125 * _868.x))), (0.18649999797344207763671875 * _107._m12) + (0.064999997615814208984375 * ((-_868.z) + (0.20000000298023223876953125 * _868.y))));
                    vec2 _950 = vec2((0.3729999959468841552734375 * _107._m12) + (0.0324999988079071044921875 * ((-_868.x) + (0.20000000298023223876953125 * _868.z))), (1.3519999980926513671875 * _107._m12) + (_868.y * 0.20000000298023223876953125));
                    vec2 _952 = _949;
                    _952 *= 0.15915493667125701904296875;
                    vec2 _1034 = textureLod(_94, _952, 0.0).xy;
                    vec2 _1035 = _1034;
                    vec2 _951 = _1035;
                    vec2 _954 = _950;
                    _954 *= 0.15915493667125701904296875;
                    vec2 _1044 = textureLod(_94, _954, 0.0).xy;
                    vec2 _1045 = _1044;
                    vec2 _953 = _1045;
                    float _955 = ((0.25 * _951.x) + (0.5 * _951.y)) + (1.0 * _953.x);
                    _868.y += ((_107._m10 * (_955 - 1.0)) * 2.0);
                    float _956 = ((-_107._m10) * 0.300000011920928955078125) * _953.y;
                    _814 = _868;
                    float _867 = _956;
                    vec3 _869 = (_814 - _107._m7) * 0.0625;
                    vec3 _870 = floor(_869);
                    vec3 _871 = (_870 + vec3(0.5)) * (vec3(16.0) / _107._m9);
                    vec2 _872 = textureLod(_239, _871, 0.0).xy;
                    if ((_872.x + _872.y) == 0.0)
                    {
                        float _873 = textureLod(_253, _871, 0.0).x * 0.800000011920928955078125;
                        _866 = _873;
                        break;
                    }
                    vec3 _874 = ((_869 - _870) * (1.0 - _107._m1.z)) + vec3(0.5 * _107._m1.z);
                    vec3 _875 = vec3(((_872 * 255.0) + _874.xy) * _107._m8, _874.z);
                    _867 += (textureLod(_293, _875, 0.0).x * 5.0);
                    _866 = _867;
                    break;
                } while(false);
                float _876 = _866;
                float _813 = _876;
                _812 += _813;
                float _815 = abs(_812) * _607.w;
                _815 += (_107._m4 * 1.39999997615814208984375);
                if (_813 <= _815)
                {
                    float _816 = _812 - _815;
                    float _1054 = max(_816, 0.0);
                    _810 = true;
                    _811 = _1054;
                    break;
                }
            }
            if (_810)
            {
                break;
            }
            _810 = true;
            _811 = _812;
            break;
        } while(false);
        float _817 = _811;
        float _604 = _817;
        bool _617 = _604 < _594.y;
        float _624;
        if (_617)
        {
            float _634 = max((_604 * _516) / _308._m1, 1.0000000116860974230803549289703e-07);
            float _1058 = 1.0 / _634;
            _624 = _1058;
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

