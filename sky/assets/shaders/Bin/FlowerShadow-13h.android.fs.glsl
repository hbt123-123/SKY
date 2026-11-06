#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 0) in f16vec4 _155;
layout(location = 1) in f16vec4 _165;
layout(location = 0) out vec4 _308;

void main()
{
    vec2 _346 = gl_PointCoord;
    vec2 _151 = _346;
    f16vec2 _349 = f16vec2(_151);
    f16vec2 _149 = _349;
    float _161 = float(_155.w);
    float16_t _353 = float16_t(_161);
    float16_t _153 = _353;
    vec4 _168 = vec4(_165);
    f16vec4 _357 = f16vec4(_168);
    f16vec4 _164 = _357;
    bool _172 = _164.x >= float16_t(0.39990234375);
    float16_t _178 = float16_t(0.0);
    vec3 _183 = vec3(_155.xyz);
    f16vec3 _361 = f16vec3(_183);
    f16vec3 _179 = _361;
    float16_t _185 = _164.y;
    if (_172)
    {
        float16_t _191 = _149.y;
        float16_t _202 = float16_t(2.0) * _185;
        float16_t _365 = min(_202, float16_t(1.0));
        _191 = mix(sqrt(_149.y), _149.y, _365);
        float16_t _213 = _149.x + (_164.z * _191);
        float16_t _369 = clamp(_213, float16_t(0.0), float16_t(1.0));
        _149.x = _369;
        float16_t _216 = _149.x - float16_t(0.5);
        float16_t _221 = _164.w;
        float16_t _224 = abs(_216);
        if (_224 < _221)
        {
            float16_t _232 = _224 / _221;
            float16_t _245 = ((_149.y - float16_t(0.89990234375)) * float16_t(10.0)) + _232;
            float16_t _373 = clamp(_245, float16_t(0.0), float16_t(1.0));
            float16_t _247 = _373;
            float16_t _377 = float16_t(1.0) - _247;
            float16_t _236 = _377;
            _178 = _236;
            _178 *= _153;
            f16vec2 _253 = _149;
            f16vec3 _255 = _179;
            float _382 = 0.829999983310699462890625;
            float16_t _403 = float16_t(_382);
            float _383 = 1.0;
            float16_t _407 = float16_t(_383);
            float16_t _384 = _253.y;
            float16_t _385 = float16_t(0.0);
            float16_t _386 = float16_t(0.599609375);
            float16_t _411 = (_384 - _385) / (_386 - _385);
            float16_t _422 = clamp(_411, float16_t(0.0), float16_t(1.0));
            float16_t _412 = _422;
            float _387 = float(_412);
            float16_t _426 = float16_t(_387);
            float16_t _381 = mix(_403, _407, _426);
            _381 *= _381;
            _255 *= _381;
            _179 = _255;
        }
    }
    else
    {
        f16vec2 _260 = _149 - f16vec2(float16_t(0.5));
        float _265 = 1.60000002384185791015625;
        float16_t _430 = float16_t(_265);
        float _268 = 2.0;
        float16_t _434 = float16_t(_268);
        float _272 = float(_185);
        float16_t _438 = float16_t(_272);
        _260.y *= mix(_430, _434, _438);
        float16_t _279 = dot(_260, _260);
        if (_279 < float16_t(0.25))
        {
            _178 = float16_t(1.0);
            _178 *= _153;
        }
    }
    if (_178 <= float16_t(0.00099945068359375))
    {
        discard;
    }
    bool _297 = false;
    if (_297 && (_178 < float16_t(0.0099945068359375)))
    {
        _179 = f16vec3(float16_t(1.0), float16_t(0.0), float16_t(0.0));
        _178 = float16_t(1.0);
    }
    f16vec3 _309 = _179;
    vec3 _442 = vec3(_309);
    float16_t _312 = _178;
    float _446 = float(_312);
    _308 = vec4(_442, _446);
}

