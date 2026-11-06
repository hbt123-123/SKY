#version 450

layout(set = 1, binding = 2, std140) uniform _92_94
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
} _94;

layout(set = 1, binding = 3) uniform sampler3D _122;
layout(set = 1, binding = 4) uniform mediump sampler3D _136;
layout(set = 1, binding = 0) uniform sampler3D _177;
layout(set = 1, binding = 5) uniform sampler2D _363;

layout(location = 1) in vec4 _332;
layout(location = 0) in vec2 _366;
layout(location = 0) out vec4 _430;

void main()
{
    bool _581 = false;
    vec4 _330 = _332;
    float _334 = inversesqrt(dot(_330.xyz, _330.xyz));
    vec4 _342 = _330;
    vec3 _344 = _342.xyz * _334;
    _330.x = _344.x;
    _330.y = _344.y;
    _330.z = _344.z;
    float _351 = _94._m24 / _334;
    vec4 _370 = textureGather(_363, _366);
    float _477 = min(min(_370.x, _370.y), min(_370.z, _370.w));
    float _374 = max(_477, 1.0000000116860974230803549289703e-07);
    float _490 = 1.0 / _374;
    float _357 = ((_94._m24 * _490) / _334) + 10.0;
    vec3 _494 = _94._m17;
    vec3 _381 = _494;
    vec3 _386 = _381;
    vec4 _388 = _330;
    float _390 = _351;
    float _392 = _357;
    vec2 _499;
    do
    {
        vec3 _500 = (_94._m89 + vec3(_94._m82.x)) - _386;
        vec3 _501 = (_500 + _94._m90) - vec3(_94._m82.x * 2.0);
        vec3 _502 = vec3(1.0) / _388.xyz;
        vec3 _503 = _500 * _502;
        vec3 _504 = _501 * _502;
        vec3 _505 = min(_503, _504);
        vec3 _506 = max(_503, _504);
        float _507 = min(_506.x, min(_506.y, _506.z));
        float _508 = max(_505.x, max(_505.y, _505.z));
        if (_508 > _507)
        {
            _499 = vec2(_507, _507);
            break;
        }
        _390 = min(_390, _507);
        _499 = vec2(max(_390, _508), min(_392, _507));
        break;
    } while(false);
    vec2 _509 = _499;
    vec2 _385 = _509;
    vec3 _396 = _381;
    vec4 _398 = _330;
    vec2 _400 = _385;
    _581 = false;
    float _582;
    do
    {
        float _583 = _400.x;
        float _642;
        while (_583 < _400.y)
        {
            vec3 _585 = _396 + (_398.xyz * _583);
            vec3 _638 = _585;
            vec3 _586 = _638;
            do
            {
                vec3 _644 = _586;
                float _725 = 0.0;
                _586 = _644;
                float _643 = _725;
                vec3 _645 = (_586 - _94._m89) * 0.0625;
                vec3 _646 = floor(_645);
                vec3 _647 = (_646 + vec3(0.5)) * (vec3(16.0) / _94._m90);
                vec2 _648 = textureLod(_122, _647, 0.0).xy;
                if ((_648.x + _648.y) == 0.0)
                {
                    float _649 = textureLod(_136, _647, 0.0).x * 0.800000011920928955078125;
                    _642 = _649;
                    break;
                }
                vec3 _650 = ((_645 - _646) * (1.0 - _94._m82.z)) + vec3(0.5 * _94._m82.z);
                vec3 _651 = vec3(((_648 * 255.0) + _650.xy) * _94._m86, _650.z);
                _643 += (textureLod(_177, _651, 0.0).x * 5.0);
                _642 = _643;
                break;
            } while(false);
            float _652 = _642;
            float _584 = _652;
            _583 += _584;
            float _587 = abs(_583) * _398.w;
            _587 += (_94._m79.w * 1.39999997615814208984375);
            if (_584 <= _587)
            {
                float _588 = _583 - _587;
                float _727 = max(_588, 0.0);
                _581 = true;
                _582 = _727;
                break;
            }
        }
        if (_581)
        {
            break;
        }
        _581 = true;
        _582 = _583;
        break;
    } while(false);
    float _589 = _582;
    float _395 = _589;
    bool _408 = _395 < _385.y;
    float _415;
    if (_408)
    {
        float _425 = max((_395 * _334) / _94._m24, 1.0000000116860974230803549289703e-07);
        float _731 = 1.0 / _425;
        _415 = _731;
    }
    else
    {
        _415 = 0.0;
    }
    float _413 = _415;
    _430 = vec4(_413);
}

