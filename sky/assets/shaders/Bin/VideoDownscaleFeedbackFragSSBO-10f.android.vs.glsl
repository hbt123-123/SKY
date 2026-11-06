#version 450

invariant gl_Position;

layout(set = 0, binding = 0) uniform mediump sampler2D _27;
layout(set = 0, binding = 1) uniform mediump sampler2D _61;

layout(location = 0) flat out vec4 _69;
layout(location = 1) flat out vec4 _75;

void main()
{
    vec3 _23 = textureLod(_27, vec2(0.25), 0.0).xyz;
    vec3 _35 = textureLod(_27, vec2(0.75, 0.25), 0.0).xyz;
    vec3 _41 = textureLod(_27, vec2(0.25, 0.75), 0.0).xyz;
    vec3 _46 = textureLod(_27, vec2(0.75), 0.0).xyz;
    vec3 _51 = (((_23 + _35) + _41) + _46) * 0.25;
    vec3 _60 = textureLod(_61, vec2(0.5, 1.0), 0.0).xyz;
    _69 = vec4(_51, 1.0);
    _75 = vec4(_60, 1.0);
    gl_Position = vec4(1.0);
    float _84 = 1.0;
    gl_PointSize = _84;
}

