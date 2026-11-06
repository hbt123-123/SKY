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
    bool _656 = false;
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
        vec2 _534 = vec2(_382);
        vec2 _535 = (vec2(_380) + vec2(0.5)) / _534;
        vec3 _536 = (_175._m2 + (_175._m4 * _535.x)) + (_175._m6 * _535.y);
        float _537 = (0.5 * length(_175._m4 + _175._m6)) / length(_534);
        vec4 _538 = vec4(_536, _537);
        vec4 _379 = _538;
        float _385 = inversesqrt(dot(_379.xyz, _379.xyz));
        vec4 _393 = _379;
        vec3 _395 = _393.xyz * _385;
        _379.x = _395.x;
        _379.y = _395.y;
        _379.z = _395.z;
        uvec2 _402 = gl_GlobalInvocationID.xy / uvec2(2u);
        float _418 = max(imageLoad(_410, ivec2(_402)).x, 1.0000000116860974230803549289703e-07);
        float _577 = 1.0 / _418;
        float _407 = (_175._m1 * _577) / _385;
        _402 = gl_GlobalInvocationID.xy;
        float _435 = max(imageLoad(_428, ivec2(_402)).x, 1.0000000116860974230803549289703e-07);
        float _581 = 1.0 / _435;
        float _425 = ((_175._m1 * _581) / _385) + 10.0;
        vec3 _585 = _175._m0;
        vec3 _442 = _585;
        vec3 _447 = _442;
        vec4 _449 = _379;
        float _451 = _407;
        float _453 = _425;
        vec3 _589 = (_74._m7 + vec3(_74._m1.x)) - _447;
        vec3 _590 = (_589 + _74._m9) - vec3(_74._m1.x * 2.0);
        vec3 _591 = vec3(1.0) / _449.xyz;
        vec3 _592 = _589 * _591;
        vec3 _593 = _590 * _591;
        vec3 _594 = min(_592, _593);
        vec3 _595 = max(_592, _593);
        float _596 = min(_595.x, min(_595.y, _595.z));
        float _597 = max(_594.x, max(_594.y, _594.z));
        vec2 _598 = vec2(max(_451, _597), min(_453, _596));
        vec2 _446 = _598;
        vec3 _457 = _442;
        vec4 _459 = _379;
        vec2 _461 = _446;
        _656 = false;
        float _657;
        do
        {
            float _658 = _461.x;
            float _712;
            while (_658 < _461.y)
            {
                vec3 _660 = _457 + (_459.xyz * _658);
                do
                {
                    vec3 _714 = _660;
                    float _795 = 0.0;
                    _660 = _714;
                    float _713 = _795;
                    vec3 _715 = (_660 - _74._m7) * 0.0625;
                    vec3 _716 = floor(_715);
                    vec3 _717 = (_716 + vec3(0.5)) * (vec3(16.0) / _74._m9);
                    vec2 _718 = textureLod(_102, _717, 0.0).xy;
                    if ((_718.x + _718.y) == 0.0)
                    {
                        float _719 = textureLod(_118, _717, 0.0).x * 0.800000011920928955078125;
                        _712 = _719;
                        break;
                    }
                    vec3 _720 = ((_715 - _716) * (1.0 - _74._m1.z)) + vec3(0.5 * _74._m1.z);
                    vec3 _721 = vec3(((_718 * 255.0) + _720.xy) * _74._m8, _720.z);
                    _713 += (textureLod(_160, _721, 0.0).x * 5.0);
                    _712 = _713;
                    break;
                } while(false);
                float _722 = _712;
                float _659 = _722;
                _658 += _659;
                float _661 = abs(_658) * _459.w;
                _661 += (_74._m4 * 1.39999997615814208984375);
                if (_659 <= _661)
                {
                    float _662 = _658 - _661;
                    float _797 = max(_662, 0.0);
                    _656 = true;
                    _657 = _797;
                    break;
                }
            }
            if (_656)
            {
                break;
            }
            _656 = true;
            _657 = _658;
            break;
        } while(false);
        float _663 = _657;
        float _456 = _663;
        bool _469 = _456 < _446.y;
        float _476;
        if (_469)
        {
            float _486 = max((_456 * _385) / _175._m1, 1.0000000116860974230803549289703e-07);
            float _801 = 1.0 / _486;
            _476 = _801;
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

