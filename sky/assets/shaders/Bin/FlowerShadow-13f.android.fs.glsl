#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 0) in vec4 _155;
layout(location = 1) in vec4 _164;
layout(location = 0) out vec4 _305;

void main()
{
    vec2 _343 = gl_PointCoord;
    vec2 _151 = _343;
    f16vec2 _346 = f16vec2(_151);
    f16vec2 _149 = _346;
    float _156 = _155.w;
    float16_t _350 = float16_t(_156);
    float16_t _153 = _350;
    vec4 _165 = _164;
    f16vec4 _354 = f16vec4(_165);
    f16vec4 _163 = _354;
    bool _170 = _163.x >= float16_t(0.39990234375);
    float16_t _176 = float16_t(0.0);
    vec3 _178 = _155.xyz;
    f16vec3 _358 = f16vec3(_178);
    f16vec3 _177 = _358;
    float16_t _182 = _163.y;
    if (_170)
    {
        float16_t _188 = _149.y;
        float16_t _199 = float16_t(2.0) * _182;
        float16_t _362 = min(_199, float16_t(1.0));
        _188 = mix(sqrt(_149.y), _149.y, _362);
        float16_t _210 = _149.x + (_163.z * _188);
        float16_t _366 = clamp(_210, float16_t(0.0), float16_t(1.0));
        _149.x = _366;
        float16_t _213 = _149.x - float16_t(0.5);
        float16_t _218 = _163.w;
        float16_t _221 = abs(_213);
        if (_221 < _218)
        {
            float16_t _229 = _221 / _218;
            float16_t _242 = ((_149.y - float16_t(0.89990234375)) * float16_t(10.0)) + _229;
            float16_t _370 = clamp(_242, float16_t(0.0), float16_t(1.0));
            float16_t _244 = _370;
            float16_t _374 = float16_t(1.0) - _244;
            float16_t _233 = _374;
            _176 = _233;
            _176 *= _153;
            f16vec2 _250 = _149;
            f16vec3 _252 = _177;
            float _379 = 0.829999983310699462890625;
            float16_t _400 = float16_t(_379);
            float _380 = 1.0;
            float16_t _404 = float16_t(_380);
            float16_t _381 = _250.y;
            float16_t _382 = float16_t(0.0);
            float16_t _383 = float16_t(0.599609375);
            float16_t _408 = (_381 - _382) / (_383 - _382);
            float16_t _419 = clamp(_408, float16_t(0.0), float16_t(1.0));
            float16_t _409 = _419;
            float _384 = float(_409);
            float16_t _423 = float16_t(_384);
            float16_t _378 = mix(_400, _404, _423);
            _378 *= _378;
            _252 *= _378;
            _177 = _252;
        }
    }
    else
    {
        f16vec2 _257 = _149 - f16vec2(float16_t(0.5));
        float _262 = 1.60000002384185791015625;
        float16_t _427 = float16_t(_262);
        float _265 = 2.0;
        float16_t _431 = float16_t(_265);
        float _269 = float(_182);
        float16_t _435 = float16_t(_269);
        _257.y *= mix(_427, _431, _435);
        float16_t _276 = dot(_257, _257);
        if (_276 < float16_t(0.25))
        {
            _176 = float16_t(1.0);
            _176 *= _153;
        }
    }
    if (_176 <= float16_t(0.00099945068359375))
    {
        discard;
    }
    bool _294 = false;
    if (_294 && (_176 < float16_t(0.0099945068359375)))
    {
        _177 = f16vec3(float16_t(1.0), float16_t(0.0), float16_t(0.0));
        _176 = float16_t(1.0);
    }
    f16vec3 _306 = _177;
    vec3 _439 = vec3(_306);
    float16_t _309 = _176;
    float _443 = float(_309);
    _305 = vec4(_439, _443);
}

