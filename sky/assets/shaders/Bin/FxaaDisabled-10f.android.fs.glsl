#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _19;

layout(location = 0) in vec2 _11;
layout(location = 0) out vec4 _25;

void main()
{
    vec2 _9 = _11;
    vec4 _15 = textureLod(_19, _9, 0.0);
    _25 = vec4(_15);
}

