#version 450

struct _24
{
    vec3 _m0;
    vec3 _m1;
    float _m2;
};

layout(set = 1, binding = 2, std140) uniform _152_154
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
} _154;

layout(set = 1, binding = 1, std140) uniform _288_290
{
    vec4 _m0;
    vec2 _m1;
} _290;

layout(set = 1, binding = 0) uniform mediump sampler2D _320;
layout(set = 1, binding = 3) uniform mediump sampler2D _376;

layout(location = 1) in vec3 _502;
layout(location = 0) in vec4 _514;
layout(location = 0) out vec4 _535;
layout(location = 1) out vec4 _542;

void main()
{
    vec3 _498 = vec3(0.0, 1.0, 0.0);
    vec3 _504 = _502;
    vec3 _506 = _498;
    vec3 _508 = _498;
    float _510 = 0.0;
    bool _511 = false;
    _24 _574;
    _574._m0 = vec3(0.0);
    _574._m1 = vec3(0.0);
    _574._m2 = 1.0;
    vec2 _575 = gl_FragCoord.xy * _290._m0.zw;
    ivec2 _576 = ivec2(floor(_575 * vec2(32.0, 16.0)));
    int _577 = (_576.y * 32) + _576.x;
    ivec4 _578 = ivec4(texelFetch(_320, ivec2(0, _577), 0));
    bool _638 = _578.x == _577;
    bool _646;
    if (_638)
    {
        _646 = _578.y == (512 - _577);
    }
    else
    {
        _646 = _638;
    }
    bool _579 = _646;
    if (_579)
    {
        _578.z = clamp(_578.z, 0, 128);
        _578.w = clamp(_578.w, 0, 128);
        int _580 = 1;
        int _581 = _578.z;
        bool _582 = _581 > 0;
        while (_582)
        {
            vec4 _584 = texelFetch(_320, ivec2(_580, _577), 0);
            vec3 _769 = (((_154._m12[0].xyz * _584.x) + (_154._m12[1].xyz * _584.y)) + (_154._m12[2].xyz * _584.z)) + _154._m12[3].xyz;
            vec4 _770 = vec4(_769, _584.w);
            vec4 _583 = _770;
            vec4 _585 = texelFetch(_376, ivec2(_580, _577), 0);
            vec4 _586 = _583;
            vec4 _587 = _585;
            vec3 _588 = _504;
            vec3 _589 = _506;
            _24 _590 = _574;
            float _803 = _587.w;
            float _804 = _586.w;
            vec3 _805 = _586.xyz - _588;
            float _806 = dot(_805, _805);
            float _807 = _803 * _806;
            float _809 = (_807 - _804) / (_807 - _806);
            float _860 = clamp(_809, 0.0, 1.0);
            float _808 = _860;
            float _811 = dot(_589, _805) * inversesqrt(_806);
            float _864 = max(_811, 0.0);
            float _810 = _864;
            _590._m1 += (_587.xyz * _808);
            _590._m0 += ((_587.xyz * _810) * _808);
            _574 = _590;
            _580++;
            _581--;
            _582 = _581 > 0;
        }
        _574._m0 = mix(_574._m1, _574._m0, vec3(_510));
        if (_511)
        {
            float _591 = 1.0;
            float _592 = _154._m14.w;
            float _593 = 1.0 / _592;
            vec3 _594 = _504 + ((_508 - _506) * 0.20000000298023223876953125);
            int _595 = _578.w;
            bool _596 = (_595 > 0) && (_591 > 9.9999997473787516355514526367188e-06);
            while (_596)
            {
                vec4 _598 = texelFetch(_320, ivec2(_580, _577), 0);
                vec3 _868 = (((_154._m12[0].xyz * _598.x) + (_154._m12[1].xyz * _598.y)) + (_154._m12[2].xyz * _598.z)) + _154._m12[3].xyz;
                vec4 _869 = vec4(_868, _598.w);
                vec4 _597 = _869;
                vec4 _599 = texelFetch(_376, ivec2(_580, _577), 0);
                float _600 = _599.x;
                vec4 _601 = _597;
                vec3 _602 = _594;
                float _603 = _592;
                float _604 = _593;
                float _605 = _591;
                float _606 = _600;
                do
                {
                    float _903 = _601.w;
                    vec3 _904 = _601.xyz - _602;
                    float _905 = dot(_154._m14.xyz, _904);
                    bool _929 = _905 > 0.0;
                    bool _938;
                    if (_929)
                    {
                        _938 = dot(_904, _904) > _601.w;
                    }
                    else
                    {
                        _938 = _929;
                    }
                    if (_938)
                    {
                        break;
                    }
                    vec3 _906 = _154._m14.xyz * _905;
                    float _907 = 1.0 / dot(_904, _904);
                    float _908 = dot(_904 - _906, _904 - _906) * _907;
                    float _909 = _903 * _907;
                    float _911 = ((_908 - _909) - _603) / (_909 * (-2.0));
                    float _991 = clamp(_911, 0.0, 1.0);
                    float _910 = _991;
                    float _912 = (_910 * _910) * (3.0 - (2.0 * _910));
                    float _913 = (_909 * _604) * _912;
                    float _914 = 1.0 - (_913 * _606);
                    float _995 = max(_914, 0.0);
                    _605 *= _995;
                    break;
                } while(false);
                _591 = _605;
                _580++;
                _595--;
                _596 = (_595 > 0) && (_591 > 9.9999997473787516355514526367188e-06);
            }
            float _607 = 1.0 + ((1.0 - _591) * _154._m14.y);
            float _999 = clamp(_607, 0.0, 1.0);
            _574._m2 = _999;
        }
    }
    _24 _608 = _574;
    _24 _500 = _608;
    vec3 _513 = vec3(_514.xyz * (_500._m1 + vec3((_154._m55.w * 2.0) * 3.1415927410125732421875)));
    float _532 = 0.00999999977648258209228515625;
    _535 = vec4(_513 * 1.0, 1.0);
    float _550 = (1.0 / gl_FragCoord.w) - _532;
    float _551 = 256.0;
    float _1003 = log(_550 * 20.0) * (_551 * 0.079292468726634979248046875);
    float _1013 = max(_1003, 0.0);
    float _1004 = _1013;
    _542 = vec4(_1004 * 1.0, 1000.0, 0.0, 1.0);
}

