#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(location = 0) in vec4 _147;
layout(location = 1) in vec4 _156;
layout(location = 0) out vec4 _296;

void main()
{
    vec2 _332 = gl_PointCoord;
    vec2 _143 = _332;
    f16vec2 _335 = f16vec2(_143);
    f16vec2 _141 = _335;
    float _148 = _147.w;
    float16_t _339 = float16_t(_148);
    float16_t _145 = _339;
    vec4 _157 = _156;
    f16vec4 _343 = f16vec4(_157);
    f16vec4 _155 = _343;
    bool _162 = _155.x >= float16_t(0.39990234375);
    float16_t _168 = float16_t(0.0);
    vec3 _170 = _147.xyz;
    f16vec3 _347 = f16vec3(_170);
    f16vec3 _169 = _347;
    float16_t _174 = _155.y;
    if (_162)
    {
        float16_t _180 = _141.y;
        float16_t _191 = float16_t(2.0) * _174;
        float16_t _351 = min(_191, float16_t(1.0));
        _180 = mix(sqrt(_141.y), _141.y, _351);
        float16_t _202 = _141.x + (_155.z * _180);
        float16_t _355 = clamp(_202, float16_t(0.0), float16_t(1.0));
        _141.x = _355;
        float16_t _205 = _141.x - float16_t(0.5);
        float16_t _210 = _155.w;
        float16_t _213 = abs(_205);
        if (_213 < _210)
        {
            float16_t _221 = _213 / _210;
            float16_t _234 = ((_141.y - float16_t(0.89990234375)) * float16_t(10.0)) + _221;
            float16_t _359 = clamp(_234, float16_t(0.0), float16_t(1.0));
            float16_t _236 = _359;
            float16_t _363 = float16_t(1.0) - _236;
            float16_t _225 = _363;
            _168 = _225;
            _168 *= _145;
            f16vec2 _242 = _141;
            f16vec3 _244 = _169;
            float _368 = 0.829999983310699462890625;
            float16_t _389 = float16_t(_368);
            float _369 = 1.0;
            float16_t _393 = float16_t(_369);
            float16_t _370 = _242.y;
            float16_t _371 = float16_t(0.0);
            float16_t _372 = float16_t(0.599609375);
            float16_t _397 = (_370 - _371) / (_372 - _371);
            float16_t _408 = clamp(_397, float16_t(0.0), float16_t(1.0));
            float16_t _398 = _408;
            float _373 = float(_398);
            float16_t _412 = float16_t(_373);
            float16_t _367 = mix(_389, _393, _412);
            _367 *= _367;
            _244 *= _367;
            _169 = _244;
        }
    }
    else
    {
        f16vec2 _249 = _141 - f16vec2(float16_t(0.5));
        float _253 = 1.0;
        float16_t _416 = float16_t(_253);
        float _256 = 1.39999997615814208984375;
        float16_t _420 = float16_t(_256);
        float _260 = float(_174);
        float16_t _424 = float16_t(_260);
        _249.y *= mix(_416, _420, _424);
        float16_t _267 = dot(_249, _249);
        if (_267 < float16_t(0.25))
        {
            _168 = float16_t(1.0);
            _168 *= _145;
        }
    }
    if (_168 <= float16_t(0.00099945068359375))
    {
        discard;
    }
    bool _285 = false;
    if (_285 && (_168 < float16_t(0.0099945068359375)))
    {
        _169 = f16vec3(float16_t(1.0), float16_t(0.0), float16_t(0.0));
        _168 = float16_t(1.0);
    }
    f16vec3 _297 = _169;
    vec3 _428 = vec3(_297);
    _296 = vec4(_428, 0.0);
}

