#version 450

layout(set = 1, binding = 0, std140) uniform _72_74
{
    vec4 _m0;
    vec4 _m1;
    vec4 _m2;
    vec4 _m3;
    vec4 _m4;
} _74;

layout(location = 0) out vec4 _132;

void main()
{
    vec2 _88 = gl_FragCoord.xy;
    float _93 = 1.0;
    vec2 _96 = _88;
    vec4 _98 = _74._m0;
    float _168;
    do
    {
        if (_98.z <= 0.00999999977648258209228515625)
        {
            _168 = 1.0;
            break;
        }
        vec2 _169 = (_96 - _98.xy) / vec2(_98.z);
        float _170 = length(pow(abs(_169), vec2(_98.w)));
        float _171 = _170;
        float _172 = 1.0;
        float _173 = 1.0 + _74._m4.z;
        float _204 = (_171 - _172) / (_173 - _172);
        float _215 = clamp(_204, 0.0, 1.0);
        float _205 = _215;
        _168 = _205;
        break;
    } while(false);
    float _174 = _168;
    _93 = min(_93, _174);
    vec2 _106 = _88;
    vec4 _108 = _74._m1;
    float _220;
    do
    {
        if (_108.z <= 0.00999999977648258209228515625)
        {
            _220 = 1.0;
            break;
        }
        vec2 _221 = (_106 - _108.xy) / vec2(_108.z);
        float _222 = length(pow(abs(_221), vec2(_108.w)));
        float _223 = _222;
        float _224 = 1.0;
        float _225 = 1.0 + _74._m4.z;
        float _256 = (_223 - _224) / (_225 - _224);
        float _267 = clamp(_256, 0.0, 1.0);
        float _257 = _267;
        _220 = _257;
        break;
    } while(false);
    float _226 = _220;
    _93 = min(_93, _226);
    vec2 _115 = _88;
    vec4 _117 = _74._m2;
    float _272;
    do
    {
        if (_117.z <= 0.00999999977648258209228515625)
        {
            _272 = 1.0;
            break;
        }
        vec2 _273 = (_115 - _117.xy) / vec2(_117.z);
        float _274 = length(pow(abs(_273), vec2(_117.w)));
        float _275 = _274;
        float _276 = 1.0;
        float _277 = 1.0 + _74._m4.z;
        float _308 = (_275 - _276) / (_277 - _276);
        float _319 = clamp(_308, 0.0, 1.0);
        float _309 = _319;
        _272 = _309;
        break;
    } while(false);
    float _278 = _272;
    _93 = min(_93, _278);
    vec2 _124 = _88;
    vec4 _126 = _74._m3;
    float _324;
    do
    {
        if (_126.z <= 0.00999999977648258209228515625)
        {
            _324 = 1.0;
            break;
        }
        vec2 _325 = (_124 - _126.xy) / vec2(_126.z);
        float _326 = length(pow(abs(_325), vec2(_126.w)));
        float _327 = _326;
        float _328 = 1.0;
        float _329 = 1.0 + _74._m4.z;
        float _360 = (_327 - _328) / (_329 - _328);
        float _371 = clamp(_360, 0.0, 1.0);
        float _361 = _371;
        _324 = _361;
        break;
    } while(false);
    float _330 = _324;
    _93 = min(_93, _330);
    _132 = vec4(0.0, 0.0, 0.0, pow(_93, _74._m4.y) * _74._m4.x);
}

