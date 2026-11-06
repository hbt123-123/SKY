#version 450
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;

layout(set = 0, binding = 0, std140) uniform _93_95
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
} _95;

layout(set = 0, binding = 1, std140) uniform _191_193
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
} _193;

layout(set = 0, binding = 8) uniform sampler3D _123;
layout(set = 0, binding = 9) uniform mediump sampler3D _137;
layout(set = 0, binding = 3) uniform sampler3D _178;
layout(set = 0, binding = 14, r32f) uniform restrict writeonly image2D _367;
layout(set = 0, binding = 12, r32f) uniform restrict readonly image2D _430;

void main()
{
    bool _698 = false;
    do
    {
        uvec2 _364 = uvec2(imageSize(_367));
        uvec2 _372 = gl_GlobalInvocationID.xy;
        bool _383 = _372.x >= _364.x;
        bool _392;
        if (!_383)
        {
            _392 = _372.y >= _364.y;
        }
        else
        {
            _392 = _383;
        }
        if (_392)
        {
            break;
        }
        uvec2 _397 = _372;
        uvec2 _399 = _364;
        vec2 _567 = vec2(_399);
        vec2 _568 = (vec2(_397) + vec2(0.5)) / _567;
        vec3 _569 = (_193._m2 + (_193._m4 * _568.x)) + (_193._m6 * _568.y);
        float _570 = (0.5 * length(_193._m4 + _193._m6)) / length(_567);
        vec4 _571 = vec4(_569, _570);
        vec4 _396 = _571;
        float _402 = inversesqrt(dot(_396.xyz, _396.xyz));
        vec4 _410 = _396;
        vec3 _412 = _410.xyz * _402;
        _396.x = _412.x;
        _396.y = _412.y;
        _396.z = _412.z;
        float _419 = _193._m1 / _402;
        uvec2 _424 = gl_GlobalInvocationID.xy * uvec2(2u);
        vec4 _429;
        _429.x = imageLoad(_430, ivec2(_424)).x;
        _429.y = imageLoad(_430, ivec2(_424) + ivec2(1, 0)).x;
        _429.z = imageLoad(_430, ivec2(_424) + ivec2(0, 1)).x;
        _429.w = imageLoad(_430, ivec2(_424) + ivec2(1)).x;
        vec4 _464 = _429;
        float _610 = min(min(_464.x, _464.y), min(_464.z, _464.w));
        float _469 = max(_610, 1.0000000116860974230803549289703e-07);
        float _623 = 1.0 / _469;
        float _461 = ((_193._m1 * _623) / _402) + 10.0;
        vec3 _627 = _193._m0;
        vec3 _476 = _627;
        vec3 _481 = _476;
        vec4 _483 = _396;
        float _485 = _419;
        float _487 = _461;
        vec3 _631 = (_95._m7 + vec3(_95._m1.x)) - _481;
        vec3 _632 = (_631 + _95._m9) - vec3(_95._m1.x * 2.0);
        vec3 _633 = vec3(1.0) / _483.xyz;
        vec3 _634 = _631 * _633;
        vec3 _635 = _632 * _633;
        vec3 _636 = min(_634, _635);
        vec3 _637 = max(_634, _635);
        float _638 = min(_637.x, min(_637.y, _637.z));
        float _639 = max(_636.x, max(_636.y, _636.z));
        vec2 _640 = vec2(max(_485, _639), min(_487, _638));
        vec2 _480 = _640;
        vec3 _491 = _476;
        vec4 _493 = _396;
        vec2 _495 = _480;
        _698 = false;
        float _699;
        do
        {
            float _700 = _495.x;
            float _754;
            while (_700 < _495.y)
            {
                vec3 _702 = _491 + (_493.xyz * _700);
                do
                {
                    vec3 _756 = _702;
                    float _837 = 0.0;
                    _702 = _756;
                    float _755 = _837;
                    vec3 _757 = (_702 - _95._m7) * 0.0625;
                    vec3 _758 = floor(_757);
                    vec3 _759 = (_758 + vec3(0.5)) * (vec3(16.0) / _95._m9);
                    vec2 _760 = textureLod(_123, _759, 0.0).xy;
                    if ((_760.x + _760.y) == 0.0)
                    {
                        float _761 = textureLod(_137, _759, 0.0).x * 0.800000011920928955078125;
                        _754 = _761;
                        break;
                    }
                    vec3 _762 = ((_757 - _758) * (1.0 - _95._m1.z)) + vec3(0.5 * _95._m1.z);
                    vec3 _763 = vec3(((_760 * 255.0) + _762.xy) * _95._m8, _762.z);
                    _755 += (textureLod(_178, _763, 0.0).x * 5.0);
                    _754 = _755;
                    break;
                } while(false);
                float _764 = _754;
                float _701 = _764;
                _700 += _701;
                float _703 = abs(_700) * _493.w;
                _703 += (_95._m4 * 1.39999997615814208984375);
                if (_701 <= _703)
                {
                    float _704 = _700 - _703;
                    float _839 = max(_704, 0.0);
                    _698 = true;
                    _699 = _839;
                    break;
                }
            }
            if (_698)
            {
                break;
            }
            _698 = true;
            _699 = _700;
            break;
        } while(false);
        float _705 = _699;
        float _490 = _705;
        bool _503 = _490 < _480.y;
        float _510;
        if (_503)
        {
            float _520 = max((_490 * _402) / _193._m1, 1.0000000116860974230803549289703e-07);
            float _843 = 1.0 / _520;
            _510 = _843;
        }
        else
        {
            _510 = 0.0;
        }
        float _508 = _510;
        imageStore(_367, ivec2(_372), vec4(_508));
        break;
    } while(false);
}

