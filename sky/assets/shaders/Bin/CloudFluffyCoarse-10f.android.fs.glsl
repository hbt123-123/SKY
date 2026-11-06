#version 450

layout(set = 1, binding = 2, std140) uniform _71_73
{
    vec4 _m0;
    vec4 _m1;
    vec4 _m2;
    vec4 _m3;
    vec4 _m4;
    vec4 _m5;
    mat4 _m6;
    mat4 _m7;
    mat4 _m8;
    mat4 _m9;
    mat4 _m10;
    mat4 _m11;
    mat4 _m12;
    vec4 _m13;
    vec4 _m14;
    vec4 _m15;
    vec4 _m16;
    vec3 _m17;
    float _m18;
    float _m19;
    float _m20;
    float _m21;
    float _m22;
    float _m23;
    float _m24;
    float _m25;
    uint _m26;
    vec4 _m27;
    vec3 _m28;
    float _m29;
    vec3 _m30;
    float _m31;
    vec4 _m32;
    vec4 _m33;
    vec3 _m34;
    vec3 _m35;
    vec3 _m36;
    vec3 _m37;
    vec3 _m38;
    vec3 _m39;
    vec4 _m40;
    vec2 _m41;
    vec2 _m42;
    float _m43;
    vec3 _m44;
    float _m45;
    vec4 _m46;
    vec3 _m47;
    float _m48;
    vec3 _m49;
    float _m50;
    vec3 _m51;
    float _m52;
    vec3 _m53;
    vec3 _m54;
    vec4 _m55;
    vec4 _m56;
    float _m57;
    float _m58;
    float _m59;
    vec4 _m60;
    vec3 _m61;
    float _m62;
    vec4 _m63;
    vec4 _m64;
    vec4 _m65;
    vec4 _m66;
    vec3 _m67;
    vec3 _m68;
    vec3 _m69;
    vec3 _m70;
    vec4 _m71;
    vec4 _m72;
    vec4 _m73;
    vec4 _m74;
    vec4 _m75;
    vec4 _m76;
    vec3 _m77;
    vec3 _m78;
    vec4 _m79;
    vec4 _m80;
    vec4 _m81;
    vec4 _m82;
    vec3 _m83;
    vec3 _m84;
    vec3 _m85;
    float _m86;
    vec3 _m87;
    float _m88;
    vec3 _m89;
    vec3 _m90;
    float _m91;
    vec3 _m92;
    vec3 _m93;
    vec3 _m94;
    vec3 _m95;
    float _m96;
    vec4 _m97;
    uvec4 _m98;
} _73;

layout(set = 1, binding = 3) uniform sampler3D _101;
layout(set = 1, binding = 4) uniform mediump sampler3D _117;
layout(set = 1, binding = 0) uniform sampler3D _159;
layout(set = 1, binding = 6) uniform sampler2D _341;
layout(set = 1, binding = 5) uniform sampler2D _358;

layout(location = 1) in vec4 _315;
layout(location = 0) in vec2 _344;
layout(location = 0) out vec4 _420;

void main()
{
    bool _560 = false;
    vec4 _313 = _315;
    float _317 = inversesqrt(dot(_313.xyz, _313.xyz));
    vec4 _325 = _313;
    vec3 _327 = _325.xyz * _317;
    _313.x = _327.x;
    _313.y = _327.y;
    _313.z = _327.z;
    float _350 = max(textureLod(_341, _344, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _465 = 1.0 / _350;
    float _334 = (_73._m24 * _465) / _317;
    float _364 = max(textureLod(_358, _344, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _469 = 1.0 / _364;
    float _355 = ((_73._m24 * _469) / _317) + 10.0;
    vec3 _473 = _73._m17;
    vec3 _371 = _473;
    vec3 _376 = _371;
    vec4 _378 = _313;
    float _380 = _334;
    float _382 = _355;
    vec2 _478;
    do
    {
        vec3 _479 = (_73._m89 + vec3(_73._m82.x)) - _376;
        vec3 _480 = (_479 + _73._m90) - vec3(_73._m82.x * 2.0);
        vec3 _481 = vec3(1.0) / _378.xyz;
        vec3 _482 = _479 * _481;
        vec3 _483 = _480 * _481;
        vec3 _484 = min(_482, _483);
        vec3 _485 = max(_482, _483);
        float _486 = min(_485.x, min(_485.y, _485.z));
        float _487 = max(_484.x, max(_484.y, _484.z));
        if (_487 > _486)
        {
            _478 = vec2(_486, _486);
            break;
        }
        _380 = min(_380, _486);
        _478 = vec2(max(_380, _487), min(_382, _486));
        break;
    } while(false);
    vec2 _488 = _478;
    vec2 _375 = _488;
    vec3 _386 = _371;
    vec4 _388 = _313;
    vec2 _390 = _375;
    _560 = false;
    float _561;
    do
    {
        float _562 = _390.x;
        float _621;
        while (_562 < _390.y)
        {
            vec3 _564 = _386 + (_388.xyz * _562);
            vec3 _617 = _564;
            vec3 _565 = _617;
            do
            {
                vec3 _623 = _565;
                float _704 = 0.0;
                _565 = _623;
                float _622 = _704;
                vec3 _624 = (_565 - _73._m89) * 0.0625;
                vec3 _625 = floor(_624);
                vec3 _626 = (_625 + vec3(0.5)) * (vec3(16.0) / _73._m90);
                vec2 _627 = textureLod(_101, _626, 0.0).xy;
                if ((_627.x + _627.y) == 0.0)
                {
                    float _628 = textureLod(_117, _626, 0.0).x * 0.800000011920928955078125;
                    _621 = _628;
                    break;
                }
                vec3 _629 = ((_624 - _625) * (1.0 - _73._m82.z)) + vec3(0.5 * _73._m82.z);
                vec3 _630 = vec3(((_627 * 255.0) + _629.xy) * _73._m86, _629.z);
                _622 += (textureLod(_159, _630, 0.0).x * 5.0);
                _621 = _622;
                break;
            } while(false);
            float _631 = _621;
            float _563 = _631;
            _562 += _563;
            float _566 = abs(_562) * _388.w;
            _566 += (_73._m79.w * 1.39999997615814208984375);
            if (_563 <= _566)
            {
                float _567 = _562 - _566;
                float _706 = max(_567, 0.0);
                _560 = true;
                _561 = _706;
                break;
            }
        }
        if (_560)
        {
            break;
        }
        _560 = true;
        _561 = _562;
        break;
    } while(false);
    float _568 = _561;
    float _385 = _568;
    bool _398 = _385 < _375.y;
    float _405;
    if (_398)
    {
        float _415 = max((_385 * _317) / _73._m24, 1.0000000116860974230803549289703e-07);
        float _710 = 1.0 / _415;
        _405 = _710;
    }
    else
    {
        _405 = 0.0;
    }
    float _403 = _405;
    _420 = vec4(_403);
}

