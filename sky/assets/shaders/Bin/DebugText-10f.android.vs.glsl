#version 450

invariant gl_Position;

layout(location = 0) in vec2 _15;
layout(location = 0) out vec4 _28;
layout(location = 1) in vec4 _30;

void main()
{
    vec4 _25 = vec4(_15.x, _15.y, 1.0, 1.0);
    gl_Position = _25;
    vec3 _36 = pow(_30.xyz, vec3(2.2000000476837158203125));
    _28.x = _36.x;
    _28.y = _36.y;
    _28.z = _36.z;
    _28.w = _30.w;
    float _52 = gl_Position.y * (-1.0);
    gl_Position.y = _52;
}

