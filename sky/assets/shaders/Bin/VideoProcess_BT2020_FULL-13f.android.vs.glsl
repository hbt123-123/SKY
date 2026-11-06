#version 450

invariant gl_Position;

layout(location = 0) out vec2 _43;

void main()
{
    int _8 = gl_VertexIndex;
    bool _20 = _8 == 0;
    float _23 = _20 ? (-3.0) : 1.0;
    gl_Position.x = _23;
    bool _30 = _8 == 2;
    float _33 = _30 ? 3.0 : (-1.0);
    gl_Position.y = _33;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    _43 = (gl_Position.xy * vec2(0.5)) + vec2(0.5);
}

