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
    bool _562 = false;
    vec4 _313 = _315;
    float _317 = inversesqrt(dot(_313.xyz, _313.xyz));
    vec4 _325 = _313;
    vec3 _327 = _325.xyz * _317;
    _313.x = _327.x;
    _313.y = _327.y;
    _313.z = _327.z;
    float _350 = max(textureLod(_341, _344, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _467 = 1.0 / _350;
    float _334 = (_73._m24 * _467) / _317;
    float _364 = max(textureLod(_358, _344, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _471 = 1.0 / _364;
    float _355 = ((_73._m24 * _471) / _317) + 10.0;
    vec3 _475 = _73._m17;
    vec3 _371 = _475;
    vec3 _376 = _371;
    vec4 _378 = _313;
    float _380 = _334;
    float _382 = _355;
    vec2 _480;
    do
    {
        vec3 _481 = (_73._m89 + vec3(_73._m82.x)) - _376;
        vec3 _482 = (_481 + _73._m90) - vec3(_73._m82.x * 2.0);
        vec3 _483 = vec3(1.0) / _378.xyz;
        vec3 _484 = _481 * _483;
        vec3 _485 = _482 * _483;
        vec3 _486 = min(_484, _485);
        vec3 _487 = max(_484, _485);
        float _488 = min(_487.x, min(_487.y, _487.z));
        float _489 = max(_486.x, max(_486.y, _486.z));
        if (_489 > _488)
        {
            _480 = vec2(_488, _488);
            break;
        }
        _380 = min(_380, _488);
        _480 = vec2(max(_380, _489), min(_382, _488));
        break;
    } while(false);
    vec2 _490 = _480;
    vec2 _375 = _490;
    vec3 _386 = _371;
    vec4 _388 = _313;
    vec2 _390 = _375;
    _562 = false;
    float _563;
    do
    {
        float _564 = _390.x;
        float _623;
        while (_564 < _390.y)
        {
            vec3 _566 = _386 + (_388.xyz * _564);
            vec3 _619 = _566;
            vec3 _567 = _619;
            do
            {
                vec3 _625 = _567;
                float _706 = 0.0;
                _567 = _625;
                float _624 = _706;
                vec3 _626 = (_567 - _73._m89) * 0.0625;
                vec3 _627 = floor(_626);
                vec3 _628 = (_627 + vec3(0.5)) * (vec3(16.0) / _73._m90);
                vec2 _629 = textureLod(_101, _628, 0.0).xy;
                if ((_629.x + _629.y) == 0.0)
                {
                    float _630 = textureLod(_117, _628, 0.0).x * 0.800000011920928955078125;
                    _623 = _630;
                    break;
                }
                vec3 _631 = ((_626 - _627) * (1.0 - _73._m82.z)) + vec3(0.5 * _73._m82.z);
                vec3 _632 = vec3(((_629 * 255.0) + _631.xy) * _73._m86, _631.z);
                _624 += (textureLod(_159, _632, 0.0).x * 5.0);
                _623 = _624;
                break;
            } while(false);
            float _633 = _623;
            float _565 = _633;
            _564 += _565;
            float _568 = abs(_564) * _388.w;
            _568 += (_73._m79.w * 1.39999997615814208984375);
            if (_565 <= _568)
            {
                float _569 = _564 - _568;
                float _708 = max(_569, 0.0);
                _562 = true;
                _563 = _708;
                break;
            }
        }
        if (_562)
        {
            break;
        }
        _562 = true;
        _563 = _564;
        break;
    } while(false);
    float _570 = _563;
    float _385 = _570;
    bool _398 = _385 < _375.y;
    float _405;
    if (_398)
    {
        float _415 = max((_385 * _317) / _73._m24, 1.0000000116860974230803549289703e-07);
        float _712 = 1.0 / _415;
        _405 = _712;
    }
    else
    {
        _405 = 0.0;
    }
    float _403 = _405;
    _420 = vec4(_403);
}

