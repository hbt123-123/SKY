#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _85_87
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
} _87;

layout(set = 0, binding = 1, std140) uniform _161_163
{
    vec4 _m0;
    vec2 _m1;
} _163;

layout(set = 0, binding = 0, std140) uniform _395_397
{
    float _m0;
    float _m1;
    float _m2;
    float _m3;
} _397;

layout(location = 3) in uint _278;
layout(location = 5) in vec3 _285;
layout(location = 6) in vec3 _292;
layout(location = 8) in vec3 _300;
layout(location = 9) in vec3 _303;
layout(location = 0) in vec4 _313;
layout(location = 1) in vec4 _315;
layout(location = 2) in vec4 _317;
layout(location = 7) in vec2 _429;
layout(location = 1) out float _456;
layout(location = 2) out float _460;
layout(location = 4) in vec4 _464;
layout(location = 0) out vec4 _480;

void main()
{
    do
    {
        uint _273 = 32u;
        bool _276 = (_278 & _273) != 0u;
        vec4 _283 = vec4(_285, 1.0);
        vec4 _291 = vec4(_292, 1.0);
        vec3 _299 = _300;
        vec3 _302 = _303;
        if (!_276)
        {
            mat3x4 _311 = mat3x4(vec4(_313), vec4(_315), vec4(_317));
            vec4 _335 = _283;
            vec3 _337 = _335 * _311;
            _283.x = _337.x;
            _283.y = _337.y;
            _283.z = _337.z;
            vec4 _345 = _291;
            vec3 _347 = _345 * _311;
            _291.x = _347.x;
            _291.y = _347.y;
            _291.z = _347.z;
            _299 = vec4(_299, 0.0) * _311;
            _302 = vec4(_302, 0.0) * _311;
        }
        vec3 _368 = ((_283.xyz + _291.xyz) * 0.5) - _87._m17;
        bool _384 = dot(_299, _368) > 0.0;
        bool _391;
        if (_384)
        {
            _391 = dot(_302, _368) > 0.0;
        }
        else
        {
            _391 = _384;
        }
        bool _380 = _391;
        bool _402;
        if (_380)
        {
            _402 = _397._m1 < 0.5;
        }
        else
        {
            _402 = _380;
        }
        if (_402)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        vec4 _411 = _87._m8 * _283;
        vec4 _418 = _87._m8 * _291;
        float _435 = mix(_411.w, _418.w, _429.x);
        float _436 = _397._m2;
        float _500 = 1.0 - (_436 / max(_435, 0.001000000047497451305389404296875));
        float _509 = clamp(_500, 0.0, 1.0);
        float _501 = _509;
        float _423 = _501;
        float _440 = mix(_397._m0, 1.0, _423);
        vec4 _445 = _411;
        vec4 _447 = _418;
        vec2 _449 = _429;
        float _451 = _440;
        vec4 _514;
        do
        {
            bool _533 = _445.w < _87._m24;
            bool _541;
            if (_533)
            {
                _541 = _447.w < _87._m24;
            }
            else
            {
                _541 = _533;
            }
            if (_541)
            {
                _514 = vec4(0.0, 0.0, 0.0, -1.0);
                break;
            }
            if (_445.w < _87._m24)
            {
                _445 = mix(_445, _447, vec4((_87._m24 - _445.w) / (_447.w - _445.w)));
            }
            else
            {
                if (_447.w < _87._m24)
                {
                    _447 = mix(_447, _445, vec4((_87._m24 - _447.w) / (_445.w - _447.w)));
                }
            }
            vec2 _515 = ((_445.xy / vec2(_445.w)) * 0.5) * _163._m0.xy;
            vec2 _516 = ((_447.xy / vec2(_447.w)) * 0.5) * _163._m0.xy;
            vec2 _517 = _516 - _515;
            float _518 = length(_517);
            vec2 _520;
            if (_518 > 9.9999997473787516355514526367188e-05)
            {
                _520 = _517 / vec2(_518);
            }
            else
            {
                _520 = vec2(1.0, 0.0);
            }
            vec2 _519 = _520;
            vec2 _521 = vec2(-_519.y, _519.x);
            float _522 = max(_451, 1.0) * 0.5;
            vec2 _523 = _521 * (_449.y * _522);
            vec2 _524 = _523 / (_163._m0.xy * 0.5);
            vec4 _525 = mix(_445, _447, vec4(_449.x));
            float _655 = _525.w;
            vec4 _657 = _525;
            vec2 _659 = _657.xy + (_524 * _655);
            _525.x = _659.x;
            _525.y = _659.y;
            float _669 = _525.w;
            vec4 _671 = _525;
            vec2 _673 = _671.xy + ((_87._m32.xy * 2.0) * _669);
            _525.x = _673.x;
            _525.y = _673.y;
            _525.w += ((-0.001000000047497451305389404296875) * abs(_525.w));
            _514 = _525;
            break;
        } while(false);
        vec4 _526 = _514;
        gl_Position = _526;
        uint _457 = _278;
        float _689;
        if ((_457 & 128u) != 0u)
        {
            _689 = 4.0;
        }
        else
        {
            float _690;
            if ((_457 & 64u) != 0u)
            {
                _690 = 2.0;
            }
            else
            {
                _690 = float((_457 & 1u) != 0u);
            }
            _689 = _690;
        }
        float _691 = _689;
        _456 = _691;
        _460 = float(_380);
        vec4 _463 = vec4(_464);
        _463.w *= mix(1.0, _397._m3, _423);
        _480 = vec4(_463);
        break;
    } while(false);
}

