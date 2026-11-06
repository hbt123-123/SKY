#version 450
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;

layout(set = 0, binding = 0, std140) uniform _72_74
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
} _74;

layout(set = 0, binding = 1, std140) uniform _173_175
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
} _175;

layout(set = 0, binding = 8) uniform sampler3D _102;
layout(set = 0, binding = 9) uniform mediump sampler3D _118;
layout(set = 0, binding = 3) uniform sampler3D _160;
layout(set = 0, binding = 14, r32f) uniform restrict writeonly image2D _350;
layout(set = 0, binding = 13, r32f) uniform restrict readonly image2D _410;
layout(set = 0, binding = 12, r32f) uniform restrict readonly image2D _428;

void main()
{
    bool _654 = false;
    do
    {
        uvec2 _347 = uvec2(imageSize(_350));
        uvec2 _355 = gl_GlobalInvocationID.xy;
        bool _366 = _355.x >= _347.x;
        bool _375;
        if (!_366)
        {
            _375 = _355.y >= _347.y;
        }
        else
        {
            _375 = _366;
        }
        if (_375)
        {
            break;
        }
        uvec2 _380 = _355;
        uvec2 _382 = _347;
        vec2 _532 = vec2(_382);
        vec2 _533 = (vec2(_380) + vec2(0.5)) / _532;
        vec3 _534 = (_175._m2 + (_175._m4 * _533.x)) + (_175._m6 * _533.y);
        float _535 = (0.5 * length(_175._m4 + _175._m6)) / length(_532);
        vec4 _536 = vec4(_534, _535);
        vec4 _379 = _536;
        float _385 = inversesqrt(dot(_379.xyz, _379.xyz));
        vec4 _393 = _379;
        vec3 _395 = _393.xyz * _385;
        _379.x = _395.x;
        _379.y = _395.y;
        _379.z = _395.z;
        uvec2 _402 = gl_GlobalInvocationID.xy / uvec2(2u);
        float _418 = max(imageLoad(_410, ivec2(_402)).x, 1.0000000116860974230803549289703e-07);
        float _575 = 1.0 / _418;
        float _407 = (_175._m1 * _575) / _385;
        _402 = gl_GlobalInvocationID.xy;
        float _435 = max(imageLoad(_428, ivec2(_402)).x, 1.0000000116860974230803549289703e-07);
        float _579 = 1.0 / _435;
        float _425 = ((_175._m1 * _579) / _385) + 10.0;
        vec3 _583 = _175._m0;
        vec3 _442 = _583;
        vec3 _447 = _442;
        vec4 _449 = _379;
        float _451 = _407;
        float _453 = _425;
        vec3 _587 = (_74._m7 + vec3(_74._m1.x)) - _447;
        vec3 _588 = (_587 + _74._m9) - vec3(_74._m1.x * 2.0);
        vec3 _589 = vec3(1.0) / _449.xyz;
        vec3 _590 = _587 * _589;
        vec3 _591 = _588 * _589;
        vec3 _592 = min(_590, _591);
        vec3 _593 = max(_590, _591);
        float _594 = min(_593.x, min(_593.y, _593.z));
        float _595 = max(_592.x, max(_592.y, _592.z));
        vec2 _596 = vec2(max(_451, _595), min(_453, _594));
        vec2 _446 = _596;
        vec3 _457 = _442;
        vec4 _459 = _379;
        vec2 _461 = _446;
        _654 = false;
        float _655;
        do
        {
            float _656 = _461.x;
            float _710;
            while (_656 < _461.y)
            {
                vec3 _658 = _457 + (_459.xyz * _656);
                do
                {
                    vec3 _712 = _658;
                    float _793 = 0.0;
                    _658 = _712;
                    float _711 = _793;
                    vec3 _713 = (_658 - _74._m7) * 0.0625;
                    vec3 _714 = floor(_713);
                    vec3 _715 = (_714 + vec3(0.5)) * (vec3(16.0) / _74._m9);
                    vec2 _716 = textureLod(_102, _715, 0.0).xy;
                    if ((_716.x + _716.y) == 0.0)
                    {
                        float _717 = textureLod(_118, _715, 0.0).x * 0.800000011920928955078125;
                        _710 = _717;
                        break;
                    }
                    vec3 _718 = ((_713 - _714) * (1.0 - _74._m1.z)) + vec3(0.5 * _74._m1.z);
                    vec3 _719 = vec3(((_716 * 255.0) + _718.xy) * _74._m8, _718.z);
                    _711 += (textureLod(_160, _719, 0.0).x * 5.0);
                    _710 = _711;
                    break;
                } while(false);
                float _720 = _710;
                float _657 = _720;
                _656 += _657;
                float _659 = abs(_656) * _459.w;
                _659 += (_74._m4 * 1.39999997615814208984375);
                if (_657 <= _659)
                {
                    float _660 = _656 - _659;
                    float _795 = max(_660, 0.0);
                    _654 = true;
                    _655 = _795;
                    break;
                }
            }
            if (_654)
            {
                break;
            }
            _654 = true;
            _655 = _656;
            break;
        } while(false);
        float _661 = _655;
        float _456 = _661;
        bool _469 = _456 < _446.y;
        float _476;
        if (_469)
        {
            float _486 = max((_456 * _385) / _175._m1, 1.0000000116860974230803549289703e-07);
            float _799 = 1.0 / _486;
            _476 = _799;
        }
        else
        {
            _476 = 0.0;
        }
        float _474 = _476;
        imageStore(_350, ivec2(_355), vec4(_474));
        break;
    } while(false);
}

