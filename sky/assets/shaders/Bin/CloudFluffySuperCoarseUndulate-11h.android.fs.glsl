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
    bool _692 = false;
    vec4 _444 = _446;
    float _448 = inversesqrt(dot(_444.xyz, _444.xyz));
    vec4 _456 = _444;
    vec3 _458 = _456.xyz * _448;
    _444.x = _458.x;
    _444.y = _458.y;
    _444.z = _458.z;
    float _465 = _106._m24 / _448;
    vec4 _481 = textureGather(_474, _477);
    float _588 = min(min(_481.x, _481.y), min(_481.z, _481.w));
    float _485 = max(_588, 1.0000000116860974230803549289703e-07);
    float _601 = 1.0 / _485;
    float _471 = ((_106._m24 * _601) / _448) + 10.0;
    vec3 _605 = _106._m17;
    vec3 _492 = _605;
    vec3 _497 = _492;
    vec4 _499 = _444;
    float _501 = _465;
    float _503 = _471;
    vec2 _610;
    do
    {
        vec3 _611 = (_106._m89 + vec3(_106._m82.x)) - _497;
        vec3 _612 = (_611 + _106._m90) - vec3(_106._m82.x * 2.0);
        vec3 _613 = vec3(1.0) / _499.xyz;
        vec3 _614 = _611 * _613;
        vec3 _615 = _612 * _613;
        vec3 _616 = min(_614, _615);
        vec3 _617 = max(_614, _615);
        float _618 = min(_617.x, min(_617.y, _617.z));
        float _619 = max(_616.x, max(_616.y, _616.z));
        if (_619 > _618)
        {
            _610 = vec2(_618, _618);
            break;
        }
        _501 = min(_501, _618);
        _610 = vec2(max(_501, _619), min(_503, _618));
        break;
    } while(false);
    vec2 _620 = _610;
    vec2 _496 = _620;
    vec3 _507 = _492;
    vec4 _509 = _444;
    vec2 _511 = _496;
    _692 = false;
    float _693;
    do
    {
        float _694 = _511.x;
        float _753;
        while (_694 < _511.y)
        {
            vec3 _696 = _507 + (_509.xyz * _694);
            vec3 _749 = _696;
            vec3 _697 = _749;
            do
            {
                vec3 _755 = _697;
                vec2 _836 = vec2((0.093249998986721038818359375 * _106._m20) + (0.12999999523162841796875 * (_755.y + (0.20000000298023223876953125 * _755.x))), (0.18649999797344207763671875 * _106._m20) + (0.064999997615814208984375 * ((-_755.z) + (0.20000000298023223876953125 * _755.y))));
                vec2 _837 = vec2((0.3729999959468841552734375 * _106._m20) + (0.0324999988079071044921875 * ((-_755.x) + (0.20000000298023223876953125 * _755.z))), (1.3519999980926513671875 * _106._m20) + (_755.y * 0.20000000298023223876953125));
                vec2 _839 = _836;
                _839 *= 0.15915493667125701904296875;
                vec2 _921 = textureLod(_91, _839, 0.0).xy;
                vec2 _922 = _921;
                vec2 _838 = _922;
                vec2 _841 = _837;
                _841 *= 0.15915493667125701904296875;
                vec2 _931 = textureLod(_91, _841, 0.0).xy;
                vec2 _932 = _931;
                vec2 _840 = _932;
                float _842 = ((0.25 * _838.x) + (0.5 * _838.y)) + (1.0 * _840.x);
                _755.y += ((_106._m88 * (_842 - 1.0)) * 2.0);
                float _843 = ((-_106._m88) * 0.300000011920928955078125) * _840.y;
                _697 = _755;
                float _754 = _843;
                vec3 _756 = (_697 - _106._m89) * 0.0625;
                vec3 _757 = floor(_756);
                vec3 _758 = (_757 + vec3(0.5)) * (vec3(16.0) / _106._m90);
                vec2 _759 = textureLod(_238, _758, 0.0).xy;
                if ((_759.x + _759.y) == 0.0)
                {
                    float _760 = textureLod(_252, _758, 0.0).x * 0.800000011920928955078125;
                    _753 = _760;
                    break;
                }
                vec3 _761 = ((_756 - _757) * (1.0 - _106._m82.z)) + vec3(0.5 * _106._m82.z);
                vec3 _762 = vec3(((_759 * 255.0) + _761.xy) * _106._m86, _761.z);
                _754 += (textureLod(_292, _762, 0.0).x * 5.0);
                _753 = _754;
                break;
            } while(false);
            float _763 = _753;
            float _695 = _763;
            _694 += _695;
            float _698 = abs(_694) * _509.w;
            _698 += (_106._m79.w * 1.39999997615814208984375);
            if (_695 <= _698)
            {
                float _699 = _694 - _698;
                float _941 = max(_699, 0.0);
                _692 = true;
                _693 = _941;
                break;
            }
        }
        if (_692)
        {
            break;
        }
        _692 = true;
        _693 = _694;
        break;
    } while(false);
    float _700 = _693;
    float _506 = _700;
    bool _519 = _506 < _496.y;
    float _526;
    if (_519)
    {
        float _536 = max((_506 * _448) / _106._m24, 1.0000000116860974230803549289703e-07);
        float _945 = 1.0 / _536;
        _526 = _945;
    }
    else
    {
        _526 = 0.0;
    }
    float _524 = _526;
    _541 = vec4(_524);
}

