#version 450

layout(location = 0) in vec3 _64;
layout(location = 1) in vec2 _67;
layout(location = 0) out vec4 _76;

void main()
{
    vec3 _62 = _64;
    vec2 _68 = _67;
    vec3 _70 = _62;
    float _109 = _68.y;
    float _110 = 0.0;
    float _111 = 0.60000002384185791015625;
    float _123 = (_109 - _110) / (_111 - _110);
    float _134 = clamp(_123, 0.0, 1.0);
    float _124 = _134;
    float _108 = mix(0.829999983310699462890625, 1.0, _124);
    _108 *= _108;
    _70 *= _108;
    _62 = _70;
    _76 = vec4(_62, 0.0);
}

