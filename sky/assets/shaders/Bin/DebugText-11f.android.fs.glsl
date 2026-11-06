#version 450

layout(location = 0) out vec4 _46;
layout(location = 0) in vec4 _48;

void main()
{
    vec4 _49 = _48;
    float _71 = _49.w;
    vec4 _72 = _49;
    vec3 _74 = _72.xyz * _71;
    _49.x = _74.x;
    _49.y = _74.y;
    _49.z = _74.z;
    vec4 _68 = _49;
    vec4 _52 = _68;
    vec4 _82 = vec4(_52);
    _46 = _82;
}

