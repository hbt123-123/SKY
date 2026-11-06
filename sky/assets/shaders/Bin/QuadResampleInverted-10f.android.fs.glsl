#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _27;

layout(location = 0) in vec2 _11;
layout(location = 0) out vec4 _23;

void main()
{
    vec2 _9 = _11;
    _9.y = 1.0 - _9.y;
    _23 = texture(_27, _9);
}

