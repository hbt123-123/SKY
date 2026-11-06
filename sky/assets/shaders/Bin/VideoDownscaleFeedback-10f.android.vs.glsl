#version 450

layout(set = 0, binding = 1, std430) restrict buffer _55_57
{
    vec4 _m0;
    vec4 _m1;
} _57;

layout(set = 0, binding = 0) uniform mediump sampler2D _13;
layout(set = 0, binding = 2) uniform mediump sampler2D _48;

void main()
{
    vec3 _9 = textureLod(_13, vec2(0.25), 0.0).xyz;
    vec3 _22 = textureLod(_13, vec2(0.75, 0.25), 0.0).xyz;
    vec3 _28 = textureLod(_13, vec2(0.25, 0.75), 0.0).xyz;
    vec3 _33 = textureLod(_13, vec2(0.75), 0.0).xyz;
    vec3 _38 = (((_9 + _22) + _28) + _33) * 0.25;
    vec3 _47 = textureLod(_48, vec2(0.5, 1.0), 0.0).xyz;
    _57._m0 = vec4(_38, 1.0);
    _57._m1 = vec4(_47, 1.0);
}

