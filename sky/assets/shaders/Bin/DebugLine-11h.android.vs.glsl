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
layout(location = 1) out float16_t _338;
layout(location = 4) in uint _340;
layout(location = 1) in f16vec4 _347;
layout(location = 3) in f16vec4 _350;
layout(location = 0) out f16vec4 _367;

void main()
{
    vec4 _275 = _89._m8 * vec4(_281, 1.0);
    vec4 _288 = _89._m8 * vec4(_291, 1.0);
    float _313 = mix(_275.w, _288.w, _304.x);
    float _314 = _311._m1;
    float _382 = 1.0 - (_314 / max(_313, 0.001000000047497451305389404296875));
    float _391 = clamp(_382, 0.0, 1.0);
    float _383 = _391;
    float _298 = _383;
    float _318 = mix(_311._m0, 1.0, _298);
    vec4 _326 = _275;
    vec4 _328 = _288;
    vec2 _330 = _304;
    float _332 = _318;
    vec4 _396;
    do
    {
        bool _415 = _326.w < _89._m24;
        bool _423;
        if (_415)
        {
            _423 = _328.w < _89._m24;
        }
        else
        {
            _423 = _415;
        }
        if (_423)
        {
            _396 = vec4(0.0, 0.0, 0.0, -1.0);
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
        vec2 _397 = ((_326.xy / vec2(_326.w)) * 0.5) * _165._m0.xy;
        vec2 _398 = ((_328.xy / vec2(_328.w)) * 0.5) * _165._m0.xy;
        vec2 _399 = _398 - _397;
        float _400 = length(_399);
        vec2 _402;
        if (_400 > 9.9999997473787516355514526367188e-05)
        {
            _402 = _399 / vec2(_400);
        }
        else
        {
            _402 = vec2(1.0, 0.0);
        }
        vec2 _401 = _402;
        vec2 _403 = vec2(-_401.y, _401.x);
        float _404 = max(_332, 1.0) * 0.5;
        vec2 _405 = _403 * (_330.y * _404);
        vec2 _406 = _405 / (_165._m0.xy * 0.5);
        vec4 _407 = mix(_326, _328, vec4(_330.x));
        float _537 = _407.w;
        vec4 _539 = _407;
        vec2 _541 = _539.xy + (_406 * _537);
        _407.x = _541.x;
        _407.y = _541.y;
        float _551 = _407.w;
        vec4 _553 = _407;
        vec2 _555 = _553.xy + ((_89._m32.xy * 2.0) * _551);
        _407.x = _555.x;
        _407.y = _555.y;
        _407.w += ((-0.001000000047497451305389404296875) * abs(_407.w));
        _396 = _407;
        break;
    } while(false);
    vec4 _408 = _396;
    gl_Position = _408;
    uint _341 = _340;
    float _571;
    if ((_341 & 128u) != 0u)
    {
        _571 = 4.0;
    }
    else
    {
        float _572;
        if ((_341 & 64u) != 0u)
        {
            _572 = 2.0;
        }
        else
        {
            _572 = float((_341 & 1u) != 0u);
        }
        _571 = _572;
    }
    float16_t _574 = float16_t(_571);
    _338 = _574;
    vec4 _344 = mix(vec4(_347), vec4(_350), vec4(_304.x));
    _344.w *= mix(1.0, _311._m2, _298);
    _367 = f16vec4(_344);
}

