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
    bool _700 = false;
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
        vec2 _569 = vec2(_399);
        vec2 _570 = (vec2(_397) + vec2(0.5)) / _569;
        vec3 _571 = (_193._m2 + (_193._m4 * _570.x)) + (_193._m6 * _570.y);
        float _572 = (0.5 * length(_193._m4 + _193._m6)) / length(_569);
        vec4 _573 = vec4(_571, _572);
        vec4 _396 = _573;
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
        float _612 = min(min(_464.x, _464.y), min(_464.z, _464.w));
        float _469 = max(_612, 1.0000000116860974230803549289703e-07);
        float _625 = 1.0 / _469;
        float _461 = ((_193._m1 * _625) / _402) + 10.0;
        vec3 _629 = _193._m0;
        vec3 _476 = _629;
        vec3 _481 = _476;
        vec4 _483 = _396;
        float _485 = _419;
        float _487 = _461;
        vec3 _633 = (_95._m7 + vec3(_95._m1.x)) - _481;
        vec3 _634 = (_633 + _95._m9) - vec3(_95._m1.x * 2.0);
        vec3 _635 = vec3(1.0) / _483.xyz;
        vec3 _636 = _633 * _635;
        vec3 _637 = _634 * _635;
        vec3 _638 = min(_636, _637);
        vec3 _639 = max(_636, _637);
        float _640 = min(_639.x, min(_639.y, _639.z));
        float _641 = max(_638.x, max(_638.y, _638.z));
        vec2 _642 = vec2(max(_485, _641), min(_487, _640));
        vec2 _480 = _642;
        vec3 _491 = _476;
        vec4 _493 = _396;
        vec2 _495 = _480;
        _700 = false;
        float _701;
        do
        {
            float _702 = _495.x;
            float _756;
            while (_702 < _495.y)
            {
                vec3 _704 = _491 + (_493.xyz * _702);
                do
                {
                    vec3 _758 = _704;
                    float _839 = 0.0;
                    _704 = _758;
                    float _757 = _839;
                    vec3 _759 = (_704 - _95._m7) * 0.0625;
                    vec3 _760 = floor(_759);
                    vec3 _761 = (_760 + vec3(0.5)) * (vec3(16.0) / _95._m9);
                    vec2 _762 = textureLod(_123, _761, 0.0).xy;
                    if ((_762.x + _762.y) == 0.0)
                    {
                        float _763 = textureLod(_137, _761, 0.0).x * 0.800000011920928955078125;
                        _756 = _763;
                        break;
                    }
                    vec3 _764 = ((_759 - _760) * (1.0 - _95._m1.z)) + vec3(0.5 * _95._m1.z);
                    vec3 _765 = vec3(((_762 * 255.0) + _764.xy) * _95._m8, _764.z);
                    _757 += (textureLod(_178, _765, 0.0).x * 5.0);
                    _756 = _757;
                    break;
                } while(false);
                float _766 = _756;
                float _703 = _766;
                _702 += _703;
                float _705 = abs(_702) * _493.w;
                _705 += (_95._m4 * 1.39999997615814208984375);
                if (_703 <= _705)
                {
                    float _706 = _702 - _705;
                    float _841 = max(_706, 0.0);
                    _700 = true;
                    _701 = _841;
                    break;
                }
            }
            if (_700)
            {
                break;
            }
            _700 = true;
            _701 = _702;
            break;
        } while(false);
        float _707 = _701;
        float _490 = _707;
        bool _503 = _490 < _480.y;
        float _510;
        if (_503)
        {
            float _520 = max((_490 * _402) / _193._m1, 1.0000000116860974230803549289703e-07);
            float _845 = 1.0 / _520;
            _510 = _845;
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

