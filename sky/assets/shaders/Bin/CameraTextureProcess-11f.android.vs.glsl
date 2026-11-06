#version 450

invariant gl_Position;

layout(location = 0) in vec3 _15;
layout(location = 0) out vec2 _35;
layout(location = 1) in vec2 _37;

void main()
{
    gl_Position.x = _15.x;
    gl_Position.y = _15.y;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    _35 = _37;
}

