#version 450

layout(set = 1, binding = 2, std140) uniform _83_85
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
} _85;

layout(set = 1, binding = 5) uniform mediump sampler2D _69;
layout(set = 1, binding = 3) uniform sampler3D _220;
layout(set = 1, binding = 4) uniform mediump sampler3D _234;
layout(set = 1, binding = 0) uniform sampler3D _274;
layout(set = 1, binding = 7) uniform sampler2D _452;
layout(set = 1, binding = 6) uniform sampler2D _469;

layout(location = 1) in vec4 _429;
layout(location = 0) in vec2 _455;
layout(location = 0) out vec4 _531;

void main()
{
    bool _673 = false;
    vec4 _427 = _429;
    float _431 = inversesqrt(dot(_427.xyz, _427.xyz));
    vec4 _439 = _427;
    vec3 _441 = _439.xyz * _431;
    _427.x = _441.x;
    _427.y = _441.y;
    _427.z = _441.z;
    float _461 = max(textureLod(_452, _455, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _578 = 1.0 / _461;
    float _448 = (_85._m24 * _578) / _431;
    float _475 = max(textureLod(_469, _455, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _582 = 1.0 / _475;
    float _466 = ((_85._m24 * _582) / _431) + 10.0;
    vec3 _586 = _85._m17;
    vec3 _482 = _586;
    vec3 _487 = _482;
    vec4 _489 = _427;
    float _491 = _448;
    float _493 = _466;
    vec2 _591;
    do
    {
        vec3 _592 = (_85._m89 + vec3(_85._m82.x)) - _487;
        vec3 _593 = (_592 + _85._m90) - vec3(_85._m82.x * 2.0);
        vec3 _594 = vec3(1.0) / _489.xyz;
        vec3 _595 = _592 * _594;
        vec3 _596 = _593 * _594;
        vec3 _597 = min(_595, _596);
        vec3 _598 = max(_595, _596);
        float _599 = min(_598.x, min(_598.y, _598.z));
        float _600 = max(_597.x, max(_597.y, _597.z));
        if (_600 > _599)
        {
            _591 = vec2(_599, _599);
            break;
        }
        _491 = min(_491, _599);
        _591 = vec2(max(_491, _600), min(_493, _599));
        break;
    } while(false);
    vec2 _601 = _591;
    vec2 _486 = _601;
    vec3 _497 = _482;
    vec4 _499 = _427;
    vec2 _501 = _486;
    _673 = false;
    float _674;
    do
    {
        float _675 = _501.x;
        float _734;
        while (_675 < _501.y)
        {
            vec3 _677 = _497 + (_499.xyz * _675);
            vec3 _730 = _677;
            vec3 _678 = _730;
            do
            {
                vec3 _736 = _678;
                vec2 _817 = vec2((0.093249998986721038818359375 * _85._m20) + (0.12999999523162841796875 * (_736.y + (0.20000000298023223876953125 * _736.x))), (0.18649999797344207763671875 * _85._m20) + (0.064999997615814208984375 * ((-_736.z) + (0.20000000298023223876953125 * _736.y))));
                vec2 _818 = vec2((0.3729999959468841552734375 * _85._m20) + (0.0324999988079071044921875 * ((-_736.x) + (0.20000000298023223876953125 * _736.z))), (1.3519999980926513671875 * _85._m20) + (_736.y * 0.20000000298023223876953125));
                vec2 _820 = _817;
                _820 *= 0.15915493667125701904296875;
                vec2 _902 = textureLod(_69, _820, 0.0).xy;
                vec2 _903 = _902;
                vec2 _819 = _903;
                vec2 _822 = _818;
                _822 *= 0.15915493667125701904296875;
                vec2 _912 = textureLod(_69, _822, 0.0).xy;
                vec2 _913 = _912;
                vec2 _821 = _913;
                float _823 = ((0.25 * _819.x) + (0.5 * _819.y)) + (1.0 * _821.x);
                _736.y += ((_85._m88 * (_823 - 1.0)) * 2.0);
                float _824 = ((-_85._m88) * 0.300000011920928955078125) * _821.y;
                _678 = _736;
                float _735 = _824;
                vec3 _737 = (_678 - _85._m89) * 0.0625;
                vec3 _738 = floor(_737);
                vec3 _739 = (_738 + vec3(0.5)) * (vec3(16.0) / _85._m90);
                vec2 _740 = textureLod(_220, _739, 0.0).xy;
                if ((_740.x + _740.y) == 0.0)
                {
                    float _741 = textureLod(_234, _739, 0.0).x * 0.800000011920928955078125;
                    _734 = _741;
                    break;
                }
                vec3 _742 = ((_737 - _738) * (1.0 - _85._m82.z)) + vec3(0.5 * _85._m82.z);
                vec3 _743 = vec3(((_740 * 255.0) + _742.xy) * _85._m86, _742.z);
                _735 += (textureLod(_274, _743, 0.0).x * 5.0);
                _734 = _735;
                break;
            } while(false);
            float _744 = _734;
            float _676 = _744;
            _675 += _676;
            float _679 = abs(_675) * _499.w;
            _679 += (_85._m79.w * 1.39999997615814208984375);
            if (_676 <= _679)
            {
                float _680 = _675 - _679;
                float _922 = max(_680, 0.0);
                _673 = true;
                _674 = _922;
                break;
            }
        }
        if (_673)
        {
            break;
        }
        _673 = true;
        _674 = _675;
        break;
    } while(false);
    float _681 = _674;
    float _496 = _681;
    bool _509 = _496 < _486.y;
    float _516;
    if (_509)
    {
        float _526 = max((_496 * _431) / _85._m24, 1.0000000116860974230803549289703e-07);
        float _926 = 1.0 / _526;
        _516 = _926;
    }
    else
    {
        _516 = 0.0;
    }
    float _514 = _516;
    _531 = vec4(_514);
}

