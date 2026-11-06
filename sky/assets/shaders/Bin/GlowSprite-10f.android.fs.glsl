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
    float _186;
    if (_109 > 0.5)
    {
        _186 = dot(_100 - vec2(0.5), _100 - vec2(0.5)) * 3.0;
    }
    else
    {
        _186 = abs(abs(_100.x - 0.5) - 0.5) * 2.0;
    }
    float _185 = _186;
    float _187;
    if (_109 > 0.5)
    {
        _187 = 1.0 - smoothstep(_102, _106, _185);
    }
    else
    {
        _187 = pow(smoothstep(_102, _106, _185), 2.0);
    }
    float _188 = _187;
    float _97 = _188;
    vec4 _113 = _114;
    _113.w *= _97;
    vec4 _121 = _113;
    float _228 = _121.w;
    vec4 _229 = _121;
    vec3 _231 = _229.xyz * _228;
    _121.x = _231.x;
    _121.y = _231.y;
    _121.z = _231.z;
    vec4 _225 = _121;
    _113 = _225;
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

