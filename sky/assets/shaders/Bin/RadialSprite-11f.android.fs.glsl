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
    float _301;
    do
    {
        vec2 _302 = vec2(0.5) - _217;
        float _303 = length(_302) * 2.0;
        float _304 = 1.0 - smoothstep(_219.z - _221, _219.z + _221, _303);
        float _305 = 1.0 - smoothstep(_219.w - _221, _219.w + _221, _303);
        bool _348 = _219.x >= 360.0;
        bool _354;
        if (_348)
        {
            _354 = _219.y <= 0.0;
        }
        else
        {
            _354 = _348;
        }
        bool _306 = _354;
        if (_306)
        {
            float _307 = _304 - _305;
            float _416 = clamp(_307, 0.0, 1.0);
            _301 = _416;
            break;
        }
        vec2 _308 = (_217 * 2.0) - vec2(1.0);
        vec2 _310 = _308;
        vec2 _420 = vec2(0.0, 1.0);
        float _421 = dot(_420, _310) * inversesqrt(dot(_310, _310));
        float _422 = acos(_421);
        _422 = degrees(_422);
        if (_310.x < 0.0)
        {
            _422 = 360.0 - _422;
        }
        float _423 = _422;
        float _309 = _423;
        float _311 = smoothstep(_309 - (_221 * 90.0), _309 + (_221 * 90.0), _219.x);
        float _312 = smoothstep(_309 - (_221 * 90.0), _309 + (_221 * 90.0), _219.y);
        float _313 = (_304 * _311) - _305;
        float _314;
        if (_219.x < _219.y)
        {
            _314 = _304 - (_304 * _312);
        }
        else
        {
            _314 = -_312;
        }
        _313 += _314;
        float _315 = _313;
        float _445 = clamp(_315, 0.0, 1.0);
        _301 = _445;
        break;
    } while(false);
    float _316 = _301;
    _210.w *= _316;
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
    float _452 = _259.w;
    vec4 _453 = _259;
    vec3 _455 = _453.xyz * _452;
    _259.x = _455.x;
    _259.y = _455.y;
    _259.z = _455.z;
    vec4 _449 = _259;
    _210 = _449;
    _263 = _210;
}

