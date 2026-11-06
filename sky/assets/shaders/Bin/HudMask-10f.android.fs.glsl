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
    float _166;
    do
    {
        if (_98.z <= 0.00999999977648258209228515625)
        {
            _166 = 1.0;
            break;
        }
        vec2 _167 = (_96 - _98.xy) / vec2(_98.z);
        float _168 = length(pow(abs(_167), vec2(_98.w)));
        float _169 = _168;
        float _170 = 1.0;
        float _171 = 1.0 + _74._m4.z;
        float _202 = (_169 - _170) / (_171 - _170);
        float _213 = clamp(_202, 0.0, 1.0);
        float _203 = _213;
        _166 = _203;
        break;
    } while(false);
    float _172 = _166;
    _93 = min(_93, _172);
    vec2 _106 = _88;
    vec4 _108 = _74._m1;
    float _218;
    do
    {
        if (_108.z <= 0.00999999977648258209228515625)
        {
            _218 = 1.0;
            break;
        }
        vec2 _219 = (_106 - _108.xy) / vec2(_108.z);
        float _220 = length(pow(abs(_219), vec2(_108.w)));
        float _221 = _220;
        float _222 = 1.0;
        float _223 = 1.0 + _74._m4.z;
        float _254 = (_221 - _222) / (_223 - _222);
        float _265 = clamp(_254, 0.0, 1.0);
        float _255 = _265;
        _218 = _255;
        break;
    } while(false);
    float _224 = _218;
    _93 = min(_93, _224);
    vec2 _115 = _88;
    vec4 _117 = _74._m2;
    float _270;
    do
    {
        if (_117.z <= 0.00999999977648258209228515625)
        {
            _270 = 1.0;
            break;
        }
        vec2 _271 = (_115 - _117.xy) / vec2(_117.z);
        float _272 = length(pow(abs(_271), vec2(_117.w)));
        float _273 = _272;
        float _274 = 1.0;
        float _275 = 1.0 + _74._m4.z;
        float _306 = (_273 - _274) / (_275 - _274);
        float _317 = clamp(_306, 0.0, 1.0);
        float _307 = _317;
        _270 = _307;
        break;
    } while(false);
    float _276 = _270;
    _93 = min(_93, _276);
    vec2 _124 = _88;
    vec4 _126 = _74._m3;
    float _322;
    do
    {
        if (_126.z <= 0.00999999977648258209228515625)
        {
            _322 = 1.0;
            break;
        }
        vec2 _323 = (_124 - _126.xy) / vec2(_126.z);
        float _324 = length(pow(abs(_323), vec2(_126.w)));
        float _325 = _324;
        float _326 = 1.0;
        float _327 = 1.0 + _74._m4.z;
        float _358 = (_325 - _326) / (_327 - _326);
        float _369 = clamp(_358, 0.0, 1.0);
        float _359 = _369;
        _322 = _359;
        break;
    } while(false);
    float _328 = _322;
    _93 = min(_93, _328);
    _132 = vec4(0.0, 0.0, 0.0, pow(_93, _74._m4.y) * _74._m4.x);
}

