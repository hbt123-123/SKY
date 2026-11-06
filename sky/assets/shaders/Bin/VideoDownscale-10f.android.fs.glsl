#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _13;

layout(location = 0) in vec2 _17;
layout(location = 0) out vec4 _27;

void main()
{
    vec3 _9 = textureLod(_13, _17, 0.0).xyz;
    _9 = max(_9, vec3(0.0));
    _27 = vec4(_9, 1.0);
}

