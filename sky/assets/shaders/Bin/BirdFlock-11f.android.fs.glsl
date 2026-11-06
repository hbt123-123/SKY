#version 450

layout(location = 0) out vec4 _9;
layout(location = 0) in vec2 _20;

void main()
{
    float _15;
    if (gl_FrontFacing)
    {
        _15 = _20.x;
    }
    else
    {
        _15 = _20.y;
    }
    _9 = vec4(vec3(_15), 0.0);
}

