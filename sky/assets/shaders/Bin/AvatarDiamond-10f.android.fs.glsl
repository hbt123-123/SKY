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
    _24 _572;
    _572._m0 = vec3(0.0);
    _572._m1 = vec3(0.0);
    _572._m2 = 1.0;
    vec2 _573 = gl_FragCoord.xy * _290._m0.zw;
    ivec2 _574 = ivec2(floor(_573 * vec2(32.0, 16.0)));
    int _575 = (_574.y * 32) + _574.x;
    ivec4 _576 = ivec4(texelFetch(_320, ivec2(0, _575), 0));
    bool _636 = _576.x == _575;
    bool _644;
    if (_636)
    {
        _644 = _576.y == (512 - _575);
    }
    else
    {
        _644 = _636;
    }
    bool _577 = _644;
    if (_577)
    {
        _576.z = clamp(_576.z, 0, 128);
        _576.w = clamp(_576.w, 0, 128);
        int _578 = 1;
        int _579 = _576.z;
        bool _580 = _579 > 0;
        while (_580)
        {
            vec4 _582 = texelFetch(_320, ivec2(_578, _575), 0);
            vec3 _767 = (((_154._m12[0].xyz * _582.x) + (_154._m12[1].xyz * _582.y)) + (_154._m12[2].xyz * _582.z)) + _154._m12[3].xyz;
            vec4 _768 = vec4(_767, _582.w);
            vec4 _581 = _768;
            vec4 _583 = texelFetch(_376, ivec2(_578, _575), 0);
            vec4 _584 = _581;
            vec4 _585 = _583;
            vec3 _586 = _504;
            vec3 _587 = _506;
            _24 _588 = _572;
            float _801 = _585.w;
            float _802 = _584.w;
            vec3 _803 = _584.xyz - _586;
            float _804 = dot(_803, _803);
            float _805 = _801 * _804;
            float _807 = (_805 - _802) / (_805 - _804);
            float _858 = clamp(_807, 0.0, 1.0);
            float _806 = _858;
            float _809 = dot(_587, _803) * inversesqrt(_804);
            float _862 = max(_809, 0.0);
            float _808 = _862;
            _588._m1 += (_585.xyz * _806);
            _588._m0 += ((_585.xyz * _808) * _806);
            _572 = _588;
            _578++;
            _579--;
            _580 = _579 > 0;
        }
        _572._m0 = mix(_572._m1, _572._m0, vec3(_510));
        if (_511)
        {
            float _589 = 1.0;
            float _590 = _154._m14.w;
            float _591 = 1.0 / _590;
            vec3 _592 = _504 + ((_508 - _506) * 0.20000000298023223876953125);
            int _593 = _576.w;
            bool _594 = (_593 > 0) && (_589 > 9.9999997473787516355514526367188e-06);
            while (_594)
            {
                vec4 _596 = texelFetch(_320, ivec2(_578, _575), 0);
                vec3 _866 = (((_154._m12[0].xyz * _596.x) + (_154._m12[1].xyz * _596.y)) + (_154._m12[2].xyz * _596.z)) + _154._m12[3].xyz;
                vec4 _867 = vec4(_866, _596.w);
                vec4 _595 = _867;
                vec4 _597 = texelFetch(_376, ivec2(_578, _575), 0);
                float _598 = _597.x;
                vec4 _599 = _595;
                vec3 _600 = _592;
                float _601 = _590;
                float _602 = _591;
                float _603 = _589;
                float _604 = _598;
                do
                {
                    float _901 = _599.w;
                    vec3 _902 = _599.xyz - _600;
                    float _903 = dot(_154._m14.xyz, _902);
                    bool _927 = _903 > 0.0;
                    bool _936;
                    if (_927)
                    {
                        _936 = dot(_902, _902) > _599.w;
                    }
                    else
                    {
                        _936 = _927;
                    }
                    if (_936)
                    {
                        break;
                    }
                    vec3 _904 = _154._m14.xyz * _903;
                    float _905 = 1.0 / dot(_902, _902);
                    float _906 = dot(_902 - _904, _902 - _904) * _905;
                    float _907 = _901 * _905;
                    float _909 = ((_906 - _907) - _601) / (_907 * (-2.0));
                    float _989 = clamp(_909, 0.0, 1.0);
                    float _908 = _989;
                    float _910 = (_908 * _908) * (3.0 - (2.0 * _908));
                    float _911 = (_907 * _602) * _910;
                    float _912 = 1.0 - (_911 * _604);
                    float _993 = max(_912, 0.0);
                    _603 *= _993;
                    break;
                } while(false);
                _589 = _603;
                _578++;
                _593--;
                _594 = (_593 > 0) && (_589 > 9.9999997473787516355514526367188e-06);
            }
            float _605 = 1.0 + ((1.0 - _589) * _154._m14.y);
            float _997 = clamp(_605, 0.0, 1.0);
            _572._m2 = _997;
        }
    }
    _24 _606 = _572;
    _24 _500 = _606;
    vec3 _513 = vec3(_514.xyz * (_500._m1 + vec3((_154._m55.w * 2.0) * 3.1415927410125732421875)));
    float _532 = 0.00999999977648258209228515625;
    _535 = vec4(_513 * 1.0, 1.0);
    float _550 = (1.0 / gl_FragCoord.w) - _532;
    float _551 = 256.0;
    float _1001 = log(_550 * 20.0) * (_551 * 0.079292468726634979248046875);
    float _1011 = max(_1001, 0.0);
    float _1002 = _1011;
    _542 = vec4(_1002 * 1.0, 1000.0, 0.0, 1.0);
}

