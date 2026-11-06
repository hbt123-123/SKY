#version 450

invariant gl_Position;

layout(location = 0) in vec3 _15;

void main()
{
    vec4 _21 = vec4(_15, 1.0);
    gl_Position = _21;
}

