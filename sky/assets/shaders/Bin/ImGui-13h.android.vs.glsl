#version 450

invariant gl_Position;

layout(set = 0, binding = 1, std140) uniform _62_64
{
    vec4 _m0;
    vec2 _m1;
} _64;

layout(set = 0, binding = 0, std140) uniform _92_94
{
    vec4 _m0;
} _94;

layout(location = 0) in vec2 _54;
layout(location = 0) out vec2 _82;
layout(location = 1) in vec2 _83;
layout(location = 1) out vec4 _85;
layout(location = 2) in vec4 _87;
layout(location = 2) out vec4 _91;

void main()
{
    vec4 _58 = vec4(_54, 1.0, 1.0);
    gl_Position = _58;
    vec2 _70 = _54 * _64._m0.zw;
    vec2 _107 = (_70 * 2.0) - vec2(1.0);
    gl_Position.x = _107.x;
    gl_Position.y = _107.y;
    float _79 = -gl_Position.y;
    gl_Position.y = _79;
    _82 = _83;
    vec4 _88 = _87;
    float _116 = _88.w;
    vec4 _117 = _88;
    vec3 _119 = _117.xyz * _116;
    _88.x = _119.x;
    _88.y = _119.y;
    _88.z = _119.z;
    vec4 _113 = _88;
    _85 = _113;
    _91 = _94._m0;
}

