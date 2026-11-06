#version 450

layout(set = 1, binding = 0, std140) uniform _124_126
{
    float _m0;
} _126;

layout(location = 1) in vec2 _91;
layout(location = 2) in vec4 _99;
layout(location = 0) in vec4 _114;
layout(location = 0) out vec4 _157;

void main()
{
    vec2 _89 = _91;
    _89.y = 1.0 - _89.y;
    vec2 _100 = _89;
    float _102 = _99.x;
    float _106 = _99.y;
    float _109 = _99.z;
    float _188;
    if (_109 > 0.5)
    {
        _188 = dot(_100 - vec2(0.5), _100 - vec2(0.5)) * 3.0;
    }
    else
    {
        _188 = abs(abs(_100.x - 0.5) - 0.5) * 2.0;
    }
    float _187 = _188;
    float _189;
    if (_109 > 0.5)
    {
        _189 = 1.0 - smoothstep(_102, _106, _187);
    }
    else
    {
        _189 = pow(smoothstep(_102, _106, _187), 2.0);
    }
    float _190 = _189;
    float _97 = _190;
    vec4 _113 = _114;
    _113.w *= _97;
    vec4 _121 = _113;
    float _230 = _121.w;
    vec4 _231 = _121;
    vec3 _233 = _231.xyz * _230;
    _121.x = _233.x;
    _121.y = _233.y;
    _121.z = _233.z;
    vec4 _227 = _121;
    _113 = _227;
    if (_126._m0 > 0.5)
    {
        vec3 _136 = vec3(0.0034399232827126979827880859375, 0.3674813807010650634765625, 0.0);
        float _141 = dot(_113.xyz, _136);
        vec3 _149 = vec3(_141, _141, _141);
        _113.x = _149.x;
        _113.y = _149.y;
        _113.z = _149.z;
    }
    _157 = _113;
}

