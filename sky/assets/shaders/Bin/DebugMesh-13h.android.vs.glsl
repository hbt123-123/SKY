#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _87_89
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
} _89;

layout(set = 0, binding = 1, std140) uniform _163_165
{
    vec4 _m0;
    vec2 _m1;
} _165;

layout(set = 0, binding = 0, std140) uniform _397_399
{
    float _m0;
    float _m1;
    float _m2;
    float _m3;
} _399;

layout(location = 3) in uint _280;
layout(location = 5) in vec3 _287;
layout(location = 6) in vec3 _294;
layout(location = 8) in vec3 _302;
layout(location = 9) in vec3 _305;
layout(location = 0) in vec4 _315;
layout(location = 1) in vec4 _317;
layout(location = 2) in vec4 _319;
layout(location = 7) in vec2 _431;
layout(location = 1) out float16_t _458;
layout(location = 2) out float16_t _462;
layout(location = 4) in f16vec4 _469;
layout(location = 0) out f16vec4 _482;

void main()
{
    do
    {
        uint _275 = 32u;
        bool _278 = (_280 & _275) != 0u;
        vec4 _285 = vec4(_287, 1.0);
        vec4 _293 = vec4(_294, 1.0);
        vec3 _301 = _302;
        vec3 _304 = _305;
        if (!_278)
        {
            mat3x4 _313 = mat3x4(vec4(_315), vec4(_317), vec4(_319));
            vec4 _337 = _285;
            vec3 _339 = _337 * _313;
            _285.x = _339.x;
            _285.y = _339.y;
            _285.z = _339.z;
            vec4 _347 = _293;
            vec3 _349 = _347 * _313;
            _293.x = _349.x;
            _293.y = _349.y;
            _293.z = _349.z;
            _301 = vec4(_301, 0.0) * _313;
            _304 = vec4(_304, 0.0) * _313;
        }
        vec3 _370 = ((_285.xyz + _293.xyz) * 0.5) - _89._m17;
        bool _386 = dot(_301, _370) > 0.0;
        bool _393;
        if (_386)
        {
            _393 = dot(_304, _370) > 0.0;
        }
        else
        {
            _393 = _386;
        }
        bool _382 = _393;
        bool _404;
        if (_382)
        {
            _404 = _399._m1 < 0.5;
        }
        else
        {
            _404 = _382;
        }
        if (_404)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        vec4 _413 = _89._m8 * _285;
        vec4 _420 = _89._m8 * _293;
        float _437 = mix(_413.w, _420.w, _431.x);
        float _438 = _399._m2;
        float _499 = 1.0 - (_438 / max(_437, 0.001000000047497451305389404296875));
        float _508 = clamp(_499, 0.0, 1.0);
        float _500 = _508;
        float _425 = _500;
        float _442 = mix(_399._m0, 1.0, _425);
        vec4 _447 = _413;
        vec4 _449 = _420;
        vec2 _451 = _431;
        float _453 = _442;
        vec4 _513;
        do
        {
            bool _532 = _447.w < _89._m24;
            bool _540;
            if (_532)
            {
                _540 = _449.w < _89._m24;
            }
            else
            {
                _540 = _532;
            }
            if (_540)
            {
                _513 = vec4(0.0, 0.0, 0.0, -1.0);
                break;
            }
            if (_447.w < _89._m24)
            {
                _447 = mix(_447, _449, vec4((_89._m24 - _447.w) / (_449.w - _447.w)));
            }
            else
            {
                if (_449.w < _89._m24)
                {
                    _449 = mix(_449, _447, vec4((_89._m24 - _449.w) / (_447.w - _449.w)));
                }
            }
            vec2 _514 = ((_447.xy / vec2(_447.w)) * 0.5) * _165._m0.xy;
            vec2 _515 = ((_449.xy / vec2(_449.w)) * 0.5) * _165._m0.xy;
            vec2 _516 = _515 - _514;
            float _517 = length(_516);
            vec2 _519;
            if (_517 > 9.9999997473787516355514526367188e-05)
            {
                _519 = _516 / vec2(_517);
            }
            else
            {
                _519 = vec2(1.0, 0.0);
            }
            vec2 _518 = _519;
            vec2 _520 = vec2(-_518.y, _518.x);
            float _521 = max(_453, 1.0) * 0.5;
            vec2 _522 = _520 * (_451.y * _521);
            vec2 _523 = _522 / (_165._m0.xy * 0.5);
            vec4 _524 = mix(_447, _449, vec4(_451.x));
            float _654 = _524.w;
            vec4 _656 = _524;
            vec2 _658 = _656.xy + (_523 * _654);
            _524.x = _658.x;
            _524.y = _658.y;
            float _668 = _524.w;
            vec4 _670 = _524;
            vec2 _672 = _670.xy + ((_89._m32.xy * 2.0) * _668);
            _524.x = _672.x;
            _524.y = _672.y;
            _524.w += ((-0.001000000047497451305389404296875) * abs(_524.w));
            _513 = _524;
            break;
        } while(false);
        vec4 _525 = _513;
        gl_Position = _525;
        uint _459 = _280;
        float _688;
        if ((_459 & 128u) != 0u)
        {
            _688 = 4.0;
        }
        else
        {
            float _689;
            if ((_459 & 64u) != 0u)
            {
                _689 = 2.0;
            }
            else
            {
                _689 = float((_459 & 1u) != 0u);
            }
            _688 = _689;
        }
        float16_t _691 = float16_t(_688);
        _458 = _691;
        _462 = float16_t(float(_382));
        vec4 _466 = vec4(_469);
        _466.w *= mix(1.0, _399._m3, _425);
        _482 = f16vec4(_466);
        break;
    } while(false);
}

