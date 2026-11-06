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
    vec2 _105 = (_70 * 2.0) - vec2(1.0);
    gl_Position.x = _105.x;
    gl_Position.y = _105.y;
    float _79 = -gl_Position.y;
    gl_Position.y = _79;
    _82 = _83;
    vec4 _88 = _87;
    float _114 = _88.w;
    vec4 _115 = _88;
    vec3 _117 = _115.xyz * _114;
    _88.x = _117.x;
    _88.y = _117.y;
    _88.z = _117.z;
    vec4 _111 = _88;
    _85 = _111;
    _91 = _94._m0;
}

