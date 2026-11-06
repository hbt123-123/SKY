#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _54_56
{
    vec2 _m0;
    vec2 _m1;
} _56;

layout(location = 0) out vec4 _65;

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
    vec2 _43 = (gl_Position.xy + vec2(1.0)) * vec2(0.5);
    vec2 _53 = (_56._m0 * 0.5) / _56._m1;
    _65.x = _43.x;
    _65.y = _43.y;
    vec2 _73 = _43 * _53;
    _65.z = _73.x;
    _65.w = _73.y;
}

