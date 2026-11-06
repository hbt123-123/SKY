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

layout(set = 0, binding = 0, std140) uniform _309_311
{
    float _m0;
    float _m1;
    float _m2;
} _311;

layout(location = 0) in vec3 _281;
layout(location = 2) in vec3 _291;
layout(location = 5) in vec2 _304;
layout(location = 1) out float _338;
layout(location = 4) in uint _340;
layout(location = 1) in vec4 _347;
layout(location = 3) in vec4 _354;
layout(location = 0) out vec4 _374;

void main()
{
    vec4 _275 = _89._m8 * vec4(_281, 1.0);
    vec4 _288 = _89._m8 * vec4(_291, 1.0);
    float _313 = mix(_275.w, _288.w, _304.x);
    float _314 = _311._m1;
    float _393 = 1.0 - (_314 / max(_313, 0.001000000047497451305389404296875));
    float _402 = clamp(_393, 0.0, 1.0);
    float _394 = _402;
    float _298 = _394;
    float _318 = mix(_311._m0, 1.0, _298);
    vec4 _326 = _275;
    vec4 _328 = _288;
    vec2 _330 = _304;
    float _332 = _318;
    vec4 _407;
    do
    {
        bool _426 = _326.w < _89._m24;
        bool _434;
        if (_426)
        {
            _434 = _328.w < _89._m24;
        }
        else
        {
            _434 = _426;
        }
        if (_434)
        {
            _407 = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        if (_326.w < _89._m24)
        {
            _326 = mix(_326, _328, vec4((_89._m24 - _326.w) / (_328.w - _326.w)));
        }
        else
        {
            if (_328.w < _89._m24)
            {
                _328 = mix(_328, _326, vec4((_89._m24 - _328.w) / (_326.w - _328.w)));
            }
        }
        vec2 _408 = ((_326.xy / vec2(_326.w)) * 0.5) * _165._m0.xy;
        vec2 _409 = ((_328.xy / vec2(_328.w)) * 0.5) * _165._m0.xy;
        vec2 _410 = _409 - _408;
        float _411 = length(_410);
        vec2 _413;
        if (_411 > 9.9999997473787516355514526367188e-05)
        {
            _413 = _410 / vec2(_411);
        }
        else
        {
            _413 = vec2(1.0, 0.0);
        }
        vec2 _412 = _413;
        vec2 _414 = vec2(-_412.y, _412.x);
        float _415 = max(_332, 1.0) * 0.5;
        vec2 _416 = _414 * (_330.y * _415);
        vec2 _417 = _416 / (_165._m0.xy * 0.5);
        vec4 _418 = mix(_326, _328, vec4(_330.x));
        float _548 = _418.w;
        vec4 _550 = _418;
        vec2 _552 = _550.xy + (_417 * _548);
        _418.x = _552.x;
        _418.y = _552.y;
        float _562 = _418.w;
        vec4 _564 = _418;
        vec2 _566 = _564.xy + ((_89._m32.xy * 2.0) * _562);
        _418.x = _566.x;
        _418.y = _566.y;
        _418.w += ((-0.001000000047497451305389404296875) * abs(_418.w));
        _407 = _418;
        break;
    } while(false);
    vec4 _419 = _407;
    gl_Position = _419;
    uint _341 = _340;
    float _582;
    if ((_341 & 128u) != 0u)
    {
        _582 = 4.0;
    }
    else
    {
        float _583;
        if ((_341 & 64u) != 0u)
        {
            _583 = 2.0;
        }
        else
        {
            _583 = float((_341 & 1u) != 0u);
        }
        _582 = _583;
    }
    float16_t _585 = float16_t(_582);
    _338 = float(_585);
    vec4 _345 = mix(vec4(_347), vec4(_354), vec4(_304.x));
    _345.w *= mix(1.0, _311._m2, _298);
    _374 = vec4(_345);
}

