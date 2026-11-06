#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _37;

layout(location = 0) in vec2 _41;
layout(location = 1) in vec4 _49;
layout(location = 2) in vec4 _62;
layout(location = 0) out vec4 _117;

void main()
{
    float _29 = 1.0030000209808349609375;
    float _31 = 1.10000002384185791015625;
    vec3 _33 = texture(_37, _41).xyz;
    vec3 _46 = texture(_37, _49.xy).xyz;
    vec3 _54 = texture(_37, _49.zw).xyz;
    vec3 _60 = texture(_37, _62.xy).xyz;
    vec3 _67 = texture(_37, _62.zw).xyz;
    vec3 _73 = (((_46 + _54) + _60) + _67) * 0.5;
    float _84 = _29;
    float _136 = 1.0 / _84;
    _33 *= vec3(_29, 1.0, _136);
    float _90 = _29;
    float _140 = 1.0 / _90;
    _73 *= vec3(_140, 1.0, _29);
    vec3 _97 = min(vec3(1000.0), _73 - _33);
    vec3 _106 = _97;
    vec3 _144 = max(_106, vec3(0.0));
    vec4 _105 = vec4(pow(_144, vec3(_31)), 0.0);
    _117 = vec4(_105);
}

