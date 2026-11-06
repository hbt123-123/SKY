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
layout(location = 2) out vec2 _41;
layout(location = 3) in vec2 _42;
layout(location = 4) out vec4 _44;
layout(location = 4) in vec4 _45;
layout(location = 3) out vec4 _47;
layout(location = 5) in vec4 _48;

void main()
{
    vec4 _21 = vec4(_15, 1.0);
    gl_Position = _21;
    _24 = _26 * _30._m0;
    _37 = _39;
    _41 = _42;
    _44 = _45;
    _47 = _48;
    float _56 = gl_Position.y * (-1.0);
    gl_Position.y = _56;
}

