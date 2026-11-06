#version 450

invariant gl_Position;

layout(location = 0) out vec2 _38;

void main()
{
    int _8 = gl_VertexIndex;
    float _14 = ((_8 == 0) || (_8 == 3)) ? (-1.0) : 1.0;
    float _26 = (_8 < 2) ? 1.0 : (-1.0);
    vec2 _33 = vec2(_14, _26);
    _38 = _33;
    vec2 _46 = _33 * 2.0;
    vec2 _48 = _46 - vec2(1.0);
    float _50 = _48.x;
    float _51 = _48.y;
    vec4 _52 = vec4(_50, _51, 0.0, 1.0);
    gl_Position = _52;
}

