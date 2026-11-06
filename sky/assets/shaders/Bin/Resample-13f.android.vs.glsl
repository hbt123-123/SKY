#version 450

invariant gl_Position;

layout(location = 0) out vec2 _9;
layout(location = 1) in vec2 _11;
layout(location = 0) in vec2 _19;

void main()
{
    _9 = _11;
    vec4 _25 = vec4(_19, 0.0, 1.0);
    gl_Position = _25;
}

