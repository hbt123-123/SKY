#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0, std140) uniform _213_215
{
    float _m0;
    float _m1;
    vec4 _m2;
    vec4 _m3;
    vec4 _m4;
    vec4 _m5;
    float _m6;
} _215;

layout(set = 1, binding = 3) uniform mediump sampler2D _207;
layout(set = 1, binding = 4) uniform mediump sampler2D _308;
layout(set = 1, binding = 5) uniform mediump sampler2D _445;
layout(set = 1, binding = 6) uniform mediump sampler2D _651;

layout(location = 3) in vec4 _172;
layout(location = 1) in vec2 _210;
layout(location = 2) in vec2 _233;
layout(location = 4) in vec4 _235;
layout(location = 0) in vec4 _270;
layout(location = 0) out vec4 _717;

void main()
{
    vec4 _65 = vec4(0.0004925038083456456661224365234375, 0.00369723956100642681121826171875, 0.010397802107036113739013671875, 1.0);
    vec4 _163 = vec4(0.0);
    vec2 _165 = gl_FragCoord.xy;
    bool _176 = _165.x >= _172.x;
    bool _184;
    if (_176)
    {
        _184 = _165.x <= _172.z;
    }
    else
    {
        _184 = _176;
    }
    bool _192;
    if (_184)
    {
        _192 = _165.y >= _172.y;
    }
    else
    {
        _192 = _184;
    }
    bool _200;
    if (_192)
    {
        _200 = _165.y <= _172.w;
    }
    else
    {
        _200 = _192;
    }
    if (_200)
    {
        vec4 _203 = texture(_207, _210);
        if (_215._m1 > 0.0)
        {
            _203 = vec4(_203.x);
        }
        if (_203.w > 0.0)
        {
            vec2 _232 = _233;
            if (_235.w > 0.0)
            {
                float _252 = (_210.x - _235.x) / (_235.z - _235.x);
                float _828 = clamp(_252, 0.0, 1.0);
                _232.x = _828;
                float _266 = (_210.y - _235.y) / (_235.w - _235.y);
                float _832 = clamp(_266, 0.0, 1.0);
                _232.y = _832;
                vec4 _271 = _270;
                float _839 = _271.w;
                vec4 _840 = _271;
                vec3 _842 = _840.xyz * _839;
                _271.x = _842.x;
                _271.y = _842.y;
                _271.z = _842.z;
                vec4 _836 = _271;
                _163 = _203 * _836;
            }
            else
            {
                vec4 _277 = _270;
                float _853 = _277.w;
                vec4 _854 = _277;
                vec3 _856 = _854.xyz * _853;
                _277.x = _856.x;
                _277.y = _856.y;
                _277.z = _856.z;
                vec4 _850 = _277;
                _163 = _203 * _850;
            }
            if (_235.w < 0.0)
            {
                float _286 = _235.z;
                float _289 = _235.x;
                float _292 = _235.y;
                float _299 = _210.y;
                float _302 = _289;
                float _304 = _289 + _292;
                float _864 = (_299 - _302) / (_304 - _302);
                float _875 = clamp(_864, 0.0, 1.0);
                float _865 = _875;
                float _295 = 1.0 - _865;
                float _307 = texture(_308, _210 * 7.0).x;
                _307 = 2.0 * (_307 - 0.5);
                float _320 = 0.100000001490116119384765625;
                float _322 = _286 - (_295 + (_307 * _320));
                float _330 = ((-1.0) * _235.w) - 1.0;
                float _336 = _330 * (1.0 - abs(_322 * 10.0));
                float _350 = step(_286, 0.99989998340606689453125) * step(_322, 0.0);
                float _879 = clamp(_350, 0.0, 1.0);
                _163.w *= _879;
                float _358 = _336 - 0.5;
                float _883 = clamp(_358, 0.0, 1.0);
                vec4 _362 = _163;
                vec4 _365 = _163;
                vec3 _367 = _365.xyz + (_362.xyz * (_883 * 100.0));
                _163.x = _367.x;
                _163.y = _367.y;
                _163.z = _367.z;
                vec4 _374 = _163;
                float _890 = _374.w;
                vec4 _891 = _374;
                vec3 _893 = _891.xyz * _890;
                _374.x = _893.x;
                _374.y = _893.y;
                _374.z = _893.z;
                vec4 _887 = _374;
                _163 = _887;
            }
            else
            {
                vec4 _378 = texture(_308, _232);
                vec4 _382 = _378;
                float _904 = _382.w;
                vec4 _905 = _382;
                vec3 _907 = _905.xyz * _904;
                _382.x = _907.x;
                _382.y = _907.y;
                _382.z = _907.z;
                vec4 _901 = _382;
                _378 = _901;
                _163 *= _378;
            }
        }
        vec4 _395 = mix(_65, vec4(1.0), vec4(_270.y));
        vec4 _401 = _163;
        if (_401.w > 0.0)
        {
            float _922 = _401.w;
            vec4 _923 = _401;
            vec3 _926 = _923.xyz / vec3(_922);
            _401.x = _926.x;
            _401.y = _926.y;
            _401.z = _926.z;
        }
        else
        {
            _401.x = 0.0;
            _401.y = 0.0;
            _401.z = 0.0;
        }
        vec4 _915 = _401;
        _163 = _915;
        vec4 _404 = texture(_207, _210);
        float _415 = max(0.00999999977648258209228515625, dot(_404.xyz, vec3(1.0)));
        float _942 = clamp(_415, 0.0, 1.0);
        float _408 = _942;
        _404 /= vec4(_408);
        vec2 _421 = (gl_FragCoord.xy - _215._m2.xy) / _215._m2.zw;
        float _434 = _421.x;
        float _946 = clamp(_434, 0.0, 1.0);
        _421.x = _946;
        float _439 = _421.y;
        float _950 = clamp(_439, 0.0, 1.0);
        _421.y = _950;
        vec4 _444 = texture(_445, _421);
        vec4 _449 = _163;
        vec3 _451 = _444.xyz;
        vec3 _454 = _395.xyz;
        vec3 _954 = (_451 * _454) * 2.0;
        vec3 _955 = vec3(1.0) - (((vec3(1.0) - _451) * 2.0) * (vec3(1.0) - _454));
        vec3 _956 = mix(_955, _954, lessThanEqual(_454, vec3(0.5)));
        _449.x = _956.x;
        _449.y = _956.y;
        _449.z = _956.z;
        vec4 _466 = _449;
        vec3 _470 = mix(_395.xyz, _466.xyz, vec3(0.550000011920928955078125));
        _449.x = _470.x;
        _449.y = _470.y;
        _449.z = _470.z;
        vec4 _477 = _163;
        vec3 _486 = mix(_449.xyz, _444.xyz, vec3(_270.x));
        _477.x = _486.x;
        _477.y = _486.y;
        _477.z = _486.z;
        vec4 _493 = _163;
        _493.x = _270.xyz.x;
        _493.y = _270.xyz.y;
        _493.z = _270.xyz.z;
        _163.x = 0.0;
        _163.y = 0.0;
        _163.z = 0.0;
        vec4 _509 = _163;
        vec3 _516 = mix(_509.xyz, _65.xyz, vec3(_404.z));
        _163.x = _516.x;
        _163.y = _516.y;
        _163.z = _516.z;
        vec4 _523 = _163;
        vec3 _530 = mix(_523.xyz, _449.xyz, vec3(_404.y));
        _163.x = _530.x;
        _163.y = _530.y;
        _163.z = _530.z;
        vec4 _537 = _163;
        vec3 _544 = mix(_537.xyz, _477.xyz, vec3(_404.x));
        _163.x = _544.x;
        _163.y = _544.y;
        _163.z = _544.z;
        vec4 _551 = _163;
        vec3 _562 = mix(_551.xyz, _493.xyz, lessThanEqual(vec3(0.004999999888241291046142578125), vec3(_270.z)));
        _163.x = _562.x;
        _163.y = _562.y;
        _163.z = _562.z;
        float _572[4] = float[](_215._m5.x, _215._m5.y, _215._m5.z, _215._m5.w);
        vec2 _585[4] = vec2[](_215._m3.xy, _215._m3.zw, _215._m4.xy, _215._m4.zw);
        for (int _602 = 0; _602 < 4; _602++)
        {
            float _611 = _572[_602];
            if (_611 > 0.0)
            {
                vec2 _619 = ((_165 - _585[_602]) / vec2(_611)) + vec2(0.5);
                vec2 _631 = _619;
                vec2 _974 = clamp(_631, vec2(0.0), vec2(1.0));
                vec2 _630 = _974;
                float _634 = ((step(0.0, _619.x) * step(0.0, _619.y)) * step(_619.x, 1.0)) * step(_619.y, 1.0);
                vec4 _650 = texture(_651, _630);
                vec3 _657 = _650.xyz;
                f16vec3 _980 = f16vec3(_657);
                vec3 _661 = _163.xyz;
                f16vec3 _984 = f16vec3(_661);
                f16vec3 _665 = _980;
                f16vec3 _666 = _984;
                f16vec3 _988 = step(_665, f16vec3(float16_t(0.5)));
                f16vec3 _989 = step(_666, f16vec3(float16_t(0.25)));
                f16vec3 _991 = _665;
                f16vec3 _1045 = (_991 * float16_t(2.0)) - f16vec3(float16_t(1.0));
                f16vec3 _990 = _666 + ((_1045 * _666) * (f16vec3(float16_t(1.0)) - _666));
                f16vec3 _993 = _665;
                f16vec3 _1051 = (_993 * float16_t(2.0)) - f16vec3(float16_t(1.0));
                f16vec3 _992 = _666 + ((_1051 * _666) * ((((_666 * float16_t(16.0)) - f16vec3(float16_t(12.0))) * _666) + f16vec3(float16_t(3.0))));
                f16vec3 _995 = _665;
                f16vec3 _1057 = (_995 * float16_t(2.0)) - f16vec3(float16_t(1.0));
                f16vec3 _994 = _666 + (_1057 * (sqrt(_666) - _666));
                f16vec3 _996 = mix(_994, _992, _989);
                f16vec3 _997 = mix(_996, _990, _988);
                f16vec3 _668 = _997;
                vec3 _1063 = vec3(_668);
                float _674 = _634 * _650.w;
                float _1067 = clamp(_674, 0.0, 1.0);
                vec3 _678 = mix(_163.xyz, _1063, vec3(_1067));
                vec3 _1071 = clamp(_678, vec3(0.0), vec3(1.0));
                _163.x = _1071.x;
                _163.y = _1071.y;
                _163.z = _1071.z;
            }
        }
        vec4 _688 = _163;
        float _1080 = _688.w;
        vec4 _1081 = _688;
        vec3 _1083 = _1081.xyz * _1080;
        _688.x = _1083.x;
        _688.y = _1083.y;
        _688.z = _1083.z;
        vec4 _1077 = _688;
        _163 = _1077;
    }
    if (_215._m6 > 0.5)
    {
        vec3 _697 = vec3(0.0034399232827126979827880859375, 0.3674813807010650634765625, 0.0);
        float _701 = dot(_163.xyz, _697);
        vec3 _709 = vec3(_701, _701, _701);
        _163.x = _709.x;
        _163.y = _709.y;
        _163.z = _709.z;
    }
    _717 = _163;
}

