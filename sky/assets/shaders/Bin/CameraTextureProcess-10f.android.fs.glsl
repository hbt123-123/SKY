#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _42;

layout(location = 0) in vec2 _46;
layout(location = 0) out vec4 _59;

void main()
{
    vec3 _38 = textureLod(_42, _46, 0.0).xyz;
    vec3 _52 = _38;
    vec3 _69 = pow((_52 + vec3(0.054999999701976776123046875)) * 0.94786727428436279296875, vec3(2.400000095367431640625));
    vec3 _70 = _52 * 0.077399380505084991455078125;
    vec3 _71 = mix(_69, _70, lessThan(_52, vec3(0.040449999272823333740234375)));
    _38 = _71;
    _38 = max(_38, vec3(0.0));
    _59 = vec4(_38, 1.0);
}

