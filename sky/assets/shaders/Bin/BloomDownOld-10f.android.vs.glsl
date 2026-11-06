#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _55_57
{
    vec2 _m0;
    vec2 _m1;
} _57;

layout(location = 0) out vec2 _73;
layout(location = 1) out vec4 _77;
layout(location = 2) out vec4 _104;

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
    vec2 _53 = (_57._m1 * 2.0) / _57._m0;
    vec2 _66 = vec2(0.6480000019073486328125) / _57._m0;
    _73 = _43 * _53;
    vec2 _87 = _73 + vec2(-_66.x, -_66.y);
    _77.x = _87.x;
    _77.y = _87.y;
    vec2 _99 = _73 + vec2(_66.x, -_66.y);
    _77.z = _99.x;
    _77.w = _99.y;
    vec2 _112 = _73 + vec2(-_66.x, _66.y);
    _104.x = _112.x;
    _104.y = _112.y;
    vec2 _123 = _73 + vec2(_66.x, _66.y);
    _104.z = _123.x;
    _104.w = _123.y;
}

