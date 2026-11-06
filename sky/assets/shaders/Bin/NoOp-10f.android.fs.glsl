#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _32;

layout(location = 1) in vec4 _23;
layout(location = 0) in vec3 _39;
layout(location = 2) in vec3 _41;
layout(location = 0) out vec4 _54;

void main()
{
    vec2 _20 = _23.xy;
    vec3 _28 = texture(_32, _20).xyz;
    float _37 = dot(_39, _41);
    float _50 = (_37 * 0.5) + 0.5;
    float _85 = clamp(_50, 0.0, 1.0);
    vec3 _44 = _28 * _85;
    _54 = vec4(_44, 0.0);
}

