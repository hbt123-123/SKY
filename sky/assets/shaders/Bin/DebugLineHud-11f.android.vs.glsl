#version 450

invariant gl_Position;

layout(location = 0) in vec4 _14;
layout(location = 0) out vec4 _25;
layout(location = 1) in vec4 _26;

void main()
{
    vec4 _22 = vec4(_14.xyz, 1.0);
    gl_Position = _22;
    _25 = _26;
}

