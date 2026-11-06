#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _13;

layout(location = 0) out vec4 _9;
layout(location = 0) in vec2 _17;

void main()
{
    _9 = texture(_13, _17);
}

