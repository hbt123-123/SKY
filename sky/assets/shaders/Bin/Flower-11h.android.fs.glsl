#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 0) in f16vec4 _147;
layout(location = 1) in f16vec4 _157;
layout(location = 0) out vec4 _299;

void main()
{
    vec2 _335 = gl_PointCoord;
    vec2 _143 = _335;
    f16vec2 _338 = f16vec2(_143);
    f16vec2 _141 = _338;
    float _153 = float(_147.w);
    float16_t _342 = float16_t(_153);
    float16_t _145 = _342;
    vec4 _160 = vec4(_157);
    f16vec4 _346 = f16vec4(_160);
    f16vec4 _156 = _346;
    bool _164 = _156.x >= float16_t(0.39990234375);
    float16_t _170 = float16_t(0.0);
    vec3 _175 = vec3(_147.xyz);
    f16vec3 _350 = f16vec3(_175);
    f16vec3 _171 = _350;
    float16_t _177 = _156.y;
    if (_164)
    {
        float16_t _183 = _141.y;
        float16_t _194 = float16_t(2.0) * _177;
        float16_t _354 = min(_194, float16_t(1.0));
        _183 = mix(sqrt(_141.y), _141.y, _354);
        float16_t _205 = _141.x + (_156.z * _183);
        float16_t _358 = clamp(_205, float16_t(0.0), float16_t(1.0));
        _141.x = _358;
        float16_t _208 = _141.x - float16_t(0.5);
        float16_t _213 = _156.w;
        float16_t _216 = abs(_208);
        if (_216 < _213)
        {
            float16_t _224 = _216 / _213;
            float16_t _237 = ((_141.y - float16_t(0.89990234375)) * float16_t(10.0)) + _224;
            float16_t _362 = clamp(_237, float16_t(0.0), float16_t(1.0));
            float16_t _239 = _362;
            float16_t _366 = float16_t(1.0) - _239;
            float16_t _228 = _366;
            _170 = _228;
            _170 *= _145;
            f16vec2 _245 = _141;
            f16vec3 _247 = _171;
            float _371 = 0.829999983310699462890625;
            float16_t _392 = float16_t(_371);
            float _372 = 1.0;
            float16_t _396 = float16_t(_372);
            float16_t _373 = _245.y;
            float16_t _374 = float16_t(0.0);
            float16_t _375 = float16_t(0.599609375);
            float16_t _400 = (_373 - _374) / (_375 - _374);
            float16_t _411 = clamp(_400, float16_t(0.0), float16_t(1.0));
            float16_t _401 = _411;
            float _376 = float(_401);
            float16_t _415 = float16_t(_376);
            float16_t _370 = mix(_392, _396, _415);
            _370 *= _370;
            _247 *= _370;
            _171 = _247;
        }
    }
    else
    {
        f16vec2 _252 = _141 - f16vec2(float16_t(0.5));
        float _256 = 1.0;
        float16_t _419 = float16_t(_256);
        float _259 = 1.39999997615814208984375;
        float16_t _423 = float16_t(_259);
        float _263 = float(_177);
        float16_t _427 = float16_t(_263);
        _252.y *= mix(_419, _423, _427);
        float16_t _270 = dot(_252, _252);
        if (_270 < float16_t(0.25))
        {
            _170 = float16_t(1.0);
            _170 *= _145;
        }
    }
    if (_170 <= float16_t(0.00099945068359375))
    {
        discard;
    }
    bool _288 = false;
    if (_288 && (_170 < float16_t(0.0099945068359375)))
    {
        _171 = f16vec3(float16_t(1.0), float16_t(0.0), float16_t(0.0));
        _170 = float16_t(1.0);
    }
    f16vec3 _300 = _171;
    vec3 _431 = vec3(_300);
    _299 = vec4(_431, 0.0);
}

