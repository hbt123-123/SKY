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
    bool _671 = false;
    vec4 _427 = _429;
    float _431 = inversesqrt(dot(_427.xyz, _427.xyz));
    vec4 _439 = _427;
    vec3 _441 = _439.xyz * _431;
    _427.x = _441.x;
    _427.y = _441.y;
    _427.z = _441.z;
    float _461 = max(textureLod(_452, _455, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _576 = 1.0 / _461;
    float _448 = (_85._m24 * _576) / _431;
    float _475 = max(textureLod(_469, _455, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _580 = 1.0 / _475;
    float _466 = ((_85._m24 * _580) / _431) + 10.0;
    vec3 _584 = _85._m17;
    vec3 _482 = _584;
    vec3 _487 = _482;
    vec4 _489 = _427;
    float _491 = _448;
    float _493 = _466;
    vec2 _589;
    do
    {
        vec3 _590 = (_85._m89 + vec3(_85._m82.x)) - _487;
        vec3 _591 = (_590 + _85._m90) - vec3(_85._m82.x * 2.0);
        vec3 _592 = vec3(1.0) / _489.xyz;
        vec3 _593 = _590 * _592;
        vec3 _594 = _591 * _592;
        vec3 _595 = min(_593, _594);
        vec3 _596 = max(_593, _594);
        float _597 = min(_596.x, min(_596.y, _596.z));
        float _598 = max(_595.x, max(_595.y, _595.z));
        if (_598 > _597)
        {
            _589 = vec2(_597, _597);
            break;
        }
        _491 = min(_491, _597);
        _589 = vec2(max(_491, _598), min(_493, _597));
        break;
    } while(false);
    vec2 _599 = _589;
    vec2 _486 = _599;
    vec3 _497 = _482;
    vec4 _499 = _427;
    vec2 _501 = _486;
    _671 = false;
    float _672;
    do
    {
        float _673 = _501.x;
        float _732;
        while (_673 < _501.y)
        {
            vec3 _675 = _497 + (_499.xyz * _673);
            vec3 _728 = _675;
            vec3 _676 = _728;
            do
            {
                vec3 _734 = _676;
                vec2 _815 = vec2((0.093249998986721038818359375 * _85._m20) + (0.12999999523162841796875 * (_734.y + (0.20000000298023223876953125 * _734.x))), (0.18649999797344207763671875 * _85._m20) + (0.064999997615814208984375 * ((-_734.z) + (0.20000000298023223876953125 * _734.y))));
                vec2 _816 = vec2((0.3729999959468841552734375 * _85._m20) + (0.0324999988079071044921875 * ((-_734.x) + (0.20000000298023223876953125 * _734.z))), (1.3519999980926513671875 * _85._m20) + (_734.y * 0.20000000298023223876953125));
                vec2 _818 = _815;
                _818 *= 0.15915493667125701904296875;
                vec2 _900 = textureLod(_69, _818, 0.0).xy;
                vec2 _901 = _900;
                vec2 _817 = _901;
                vec2 _820 = _816;
                _820 *= 0.15915493667125701904296875;
                vec2 _910 = textureLod(_69, _820, 0.0).xy;
                vec2 _911 = _910;
                vec2 _819 = _911;
                float _821 = ((0.25 * _817.x) + (0.5 * _817.y)) + (1.0 * _819.x);
                _734.y += ((_85._m88 * (_821 - 1.0)) * 2.0);
                float _822 = ((-_85._m88) * 0.300000011920928955078125) * _819.y;
                _676 = _734;
                float _733 = _822;
                vec3 _735 = (_676 - _85._m89) * 0.0625;
                vec3 _736 = floor(_735);
                vec3 _737 = (_736 + vec3(0.5)) * (vec3(16.0) / _85._m90);
                vec2 _738 = textureLod(_220, _737, 0.0).xy;
                if ((_738.x + _738.y) == 0.0)
                {
                    float _739 = textureLod(_234, _737, 0.0).x * 0.800000011920928955078125;
                    _732 = _739;
                    break;
                }
                vec3 _740 = ((_735 - _736) * (1.0 - _85._m82.z)) + vec3(0.5 * _85._m82.z);
                vec3 _741 = vec3(((_738 * 255.0) + _740.xy) * _85._m86, _740.z);
                _733 += (textureLod(_274, _741, 0.0).x * 5.0);
                _732 = _733;
                break;
            } while(false);
            float _742 = _732;
            float _674 = _742;
            _673 += _674;
            float _677 = abs(_673) * _499.w;
            _677 += (_85._m79.w * 1.39999997615814208984375);
            if (_674 <= _677)
            {
                float _678 = _673 - _677;
                float _920 = max(_678, 0.0);
                _671 = true;
                _672 = _920;
                break;
            }
        }
        if (_671)
        {
            break;
        }
        _671 = true;
        _672 = _673;
        break;
    } while(false);
    float _679 = _672;
    float _496 = _679;
    bool _509 = _496 < _486.y;
    float _516;
    if (_509)
    {
        float _526 = max((_496 * _431) / _85._m24, 1.0000000116860974230803549289703e-07);
        float _924 = 1.0 / _526;
        _516 = _924;
    }
    else
    {
        _516 = 0.0;
    }
    float _514 = _516;
    _531 = vec4(_514);
}

