#version 450

layout(set = 1, binding = 2, std140) uniform _104_106
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
} _106;

layout(set = 1, binding = 5) uniform mediump sampler2D _91;
layout(set = 1, binding = 3) uniform sampler3D _238;
layout(set = 1, binding = 4) uniform mediump sampler3D _252;
layout(set = 1, binding = 0) uniform sampler3D _292;
layout(set = 1, binding = 6) uniform sampler2D _474;

layout(location = 1) in vec4 _446;
layout(location = 0) in vec2 _477;
layout(location = 0) out vec4 _541;

void main()
{
    bool _690 = false;
    vec4 _444 = _446;
    float _448 = inversesqrt(dot(_444.xyz, _444.xyz));
    vec4 _456 = _444;
    vec3 _458 = _456.xyz * _448;
    _444.x = _458.x;
    _444.y = _458.y;
    _444.z = _458.z;
    float _465 = _106._m24 / _448;
    vec4 _481 = textureGather(_474, _477);
    float _586 = min(min(_481.x, _481.y), min(_481.z, _481.w));
    float _485 = max(_586, 1.0000000116860974230803549289703e-07);
    float _599 = 1.0 / _485;
    float _471 = ((_106._m24 * _599) / _448) + 10.0;
    vec3 _603 = _106._m17;
    vec3 _492 = _603;
    vec3 _497 = _492;
    vec4 _499 = _444;
    float _501 = _465;
    float _503 = _471;
    vec2 _608;
    do
    {
        vec3 _609 = (_106._m89 + vec3(_106._m82.x)) - _497;
        vec3 _610 = (_609 + _106._m90) - vec3(_106._m82.x * 2.0);
        vec3 _611 = vec3(1.0) / _499.xyz;
        vec3 _612 = _609 * _611;
        vec3 _613 = _610 * _611;
        vec3 _614 = min(_612, _613);
        vec3 _615 = max(_612, _613);
        float _616 = min(_615.x, min(_615.y, _615.z));
        float _617 = max(_614.x, max(_614.y, _614.z));
        if (_617 > _616)
        {
            _608 = vec2(_616, _616);
            break;
        }
        _501 = min(_501, _616);
        _608 = vec2(max(_501, _617), min(_503, _616));
        break;
    } while(false);
    vec2 _618 = _608;
    vec2 _496 = _618;
    vec3 _507 = _492;
    vec4 _509 = _444;
    vec2 _511 = _496;
    _690 = false;
    float _691;
    do
    {
        float _692 = _511.x;
        float _751;
        while (_692 < _511.y)
        {
            vec3 _694 = _507 + (_509.xyz * _692);
            vec3 _747 = _694;
            vec3 _695 = _747;
            do
            {
                vec3 _753 = _695;
                vec2 _834 = vec2((0.093249998986721038818359375 * _106._m20) + (0.12999999523162841796875 * (_753.y + (0.20000000298023223876953125 * _753.x))), (0.18649999797344207763671875 * _106._m20) + (0.064999997615814208984375 * ((-_753.z) + (0.20000000298023223876953125 * _753.y))));
                vec2 _835 = vec2((0.3729999959468841552734375 * _106._m20) + (0.0324999988079071044921875 * ((-_753.x) + (0.20000000298023223876953125 * _753.z))), (1.3519999980926513671875 * _106._m20) + (_753.y * 0.20000000298023223876953125));
                vec2 _837 = _834;
                _837 *= 0.15915493667125701904296875;
                vec2 _919 = textureLod(_91, _837, 0.0).xy;
                vec2 _920 = _919;
                vec2 _836 = _920;
                vec2 _839 = _835;
                _839 *= 0.15915493667125701904296875;
                vec2 _929 = textureLod(_91, _839, 0.0).xy;
                vec2 _930 = _929;
                vec2 _838 = _930;
                float _840 = ((0.25 * _836.x) + (0.5 * _836.y)) + (1.0 * _838.x);
                _753.y += ((_106._m88 * (_840 - 1.0)) * 2.0);
                float _841 = ((-_106._m88) * 0.300000011920928955078125) * _838.y;
                _695 = _753;
                float _752 = _841;
                vec3 _754 = (_695 - _106._m89) * 0.0625;
                vec3 _755 = floor(_754);
                vec3 _756 = (_755 + vec3(0.5)) * (vec3(16.0) / _106._m90);
                vec2 _757 = textureLod(_238, _756, 0.0).xy;
                if ((_757.x + _757.y) == 0.0)
                {
                    float _758 = textureLod(_252, _756, 0.0).x * 0.800000011920928955078125;
                    _751 = _758;
                    break;
                }
                vec3 _759 = ((_754 - _755) * (1.0 - _106._m82.z)) + vec3(0.5 * _106._m82.z);
                vec3 _760 = vec3(((_757 * 255.0) + _759.xy) * _106._m86, _759.z);
                _752 += (textureLod(_292, _760, 0.0).x * 5.0);
                _751 = _752;
                break;
            } while(false);
            float _761 = _751;
            float _693 = _761;
            _692 += _693;
            float _696 = abs(_692) * _509.w;
            _696 += (_106._m79.w * 1.39999997615814208984375);
            if (_693 <= _696)
            {
                float _697 = _692 - _696;
                float _939 = max(_697, 0.0);
                _690 = true;
                _691 = _939;
                break;
            }
        }
        if (_690)
        {
            break;
        }
        _690 = true;
        _691 = _692;
        break;
    } while(false);
    float _698 = _691;
    float _506 = _698;
    bool _519 = _506 < _496.y;
    float _526;
    if (_519)
    {
        float _536 = max((_506 * _448) / _106._m24, 1.0000000116860974230803549289703e-07);
        float _943 = 1.0 / _536;
        _526 = _943;
    }
    else
    {
        _526 = 0.0;
    }
    float _524 = _526;
    _541 = vec4(_524);
}

