#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _19;

layout(location = 0) in vec2 _11;
layout(location = 0) out vec4 _15;

void main()
{
    vec2 _9 = _11;
    _15 = texture(_19, _9);
}

