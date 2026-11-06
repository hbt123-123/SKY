#version 450

layout(set = 1, binding = 0, std140) uniform _228_230
{
    mediump float _m0;
} _230;

layout(location = 1) in vec2 _204;
layout(location = 0) in vec4 _212;
layout(location = 2) in vec4 _214;
layout(location = 3) in float _216;
layout(location = 0) out vec4 _263;

void main()
{
    vec2 _202 = _204;
    _202.y = 1.0 - _202.y;
    vec4 _210 = _212;
    vec2 _217 = _202;
    vec4 _219 = _214;
    float _221 = _216;
    float _299;
    do
    {
        vec2 _300 = vec2(0.5) - _217;
        float _301 = length(_300) * 2.0;
        float _302 = 1.0 - smoothstep(_219.z - _221, _219.z + _221, _301);
        float _303 = 1.0 - smoothstep(_219.w - _221, _219.w + _221, _301);
        bool _346 = _219.x >= 360.0;
        bool _352;
        if (_346)
        {
            _352 = _219.y <= 0.0;
        }
        else
        {
            _352 = _346;
        }
        bool _304 = _352;
        if (_304)
        {
            float _305 = _302 - _303;
            float _414 = clamp(_305, 0.0, 1.0);
            _299 = _414;
            break;
        }
        vec2 _306 = (_217 * 2.0) - vec2(1.0);
        vec2 _308 = _306;
        vec2 _418 = vec2(0.0, 1.0);
        float _419 = dot(_418, _308) * inversesqrt(dot(_308, _308));
        float _420 = acos(_419);
        _420 = degrees(_420);
        if (_308.x < 0.0)
        {
            _420 = 360.0 - _420;
        }
        float _421 = _420;
        float _307 = _421;
        float _309 = smoothstep(_307 - (_221 * 90.0), _307 + (_221 * 90.0), _219.x);
        float _310 = smoothstep(_307 - (_221 * 90.0), _307 + (_221 * 90.0), _219.y);
        float _311 = (_302 * _309) - _303;
        float _312;
        if (_219.x < _219.y)
        {
            _312 = _302 - (_302 * _310);
        }
        else
        {
            _312 = -_310;
        }
        _311 += _312;
        float _313 = _311;
        float _443 = clamp(_313, 0.0, 1.0);
        _299 = _443;
        break;
    } while(false);
    float _314 = _299;
    _210.w *= _314;
    if (_230._m0 > 0.5)
    {
        mediump vec3 _240 = vec3(0.0034399232827126979827880859375, 0.3674813807010650634765625, 0.0);
        mediump float _244 = dot(_210.xyz, _240);
        mediump vec3 _252 = vec3(_244, _244, _244);
        _210.x = _252.x;
        _210.y = _252.y;
        _210.z = _252.z;
    }
    vec4 _259 = _210;
    float _450 = _259.w;
    vec4 _451 = _259;
    vec3 _453 = _451.xyz * _450;
    _259.x = _453.x;
    _259.y = _453.y;
    _259.z = _453.z;
    vec4 _447 = _259;
    _210 = _447;
    _263 = _210;
}

