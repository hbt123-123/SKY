#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _28_30
{
    vec4 _m0;
} _30;

layout(location = 0) in vec3 _15;
layout(location = 0) out vec4 _24;
layout(location = 1) in vec4 _26;
layout(location = 1) out vec2 _37;
layout(location = 2) in vec2 _39;

void main()
{
    vec4 _21 = vec4(_15, 1.0);
    gl_Position = _21;
    _24 = _26 * _30._m0;
    _37 = _39;
    float _47 = gl_Position.y * (-1.0);
    gl_Position.y = _47;
}

