#version 450

layout(location = 0) out vec4 _35;
layout(location = 0) in vec4 _37;

void main()
{
    vec4 _38 = _37;
    float _56 = _38.w;
    vec4 _57 = _38;
    vec3 _59 = _57.xyz * _56;
    _38.x = _59.x;
    _38.y = _59.y;
    _38.z = _59.z;
    vec4 _53 = _38;
    _35 = _53;
}

