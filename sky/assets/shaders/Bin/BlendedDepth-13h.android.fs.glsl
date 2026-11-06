#version 450

layout(set = 1, binding = 0) uniform sampler2D _12;
layout(set = 1, binding = 3) uniform sampler2D _25;

layout(location = 0) in vec2 _16;
layout(location = 0) out vec4 _35;
layout(location = 1) out vec4 _37;

void main()
{
    float _8 = textureLod(_12, _16, 0.0).x;
    float _24 = textureLod(_25, _16, 0.0).x;
    float _30 = max(_8, _24);
    _35 = vec4(0.0);
    _37 = vec4(0.0);
    gl_FragDepth = _30;
}

