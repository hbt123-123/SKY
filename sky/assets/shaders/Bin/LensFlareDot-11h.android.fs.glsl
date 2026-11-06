#version 450

layout(set = 1, binding = 1, std140) uniform _137_139
{
    vec4 _m0;
    vec2 _m1;
} _139;

layout(location = 0) in vec4 _100;
layout(location = 2) in vec3 _111;
layout(location = 0) out vec4 _167;
layout(location = 1) in vec3 _168;

void main()
{
    vec2 _97 = _100.xy;
    vec2 _103 = _100.zw;
    vec2 _106 = (_97 + (_103 * _111.x)) * _111.y;
    vec2 _122 = _106;
    float _124 = 2.0;
    float _205 = atan(_122.x, _122.y);
    float _206 = _205 * 9.0;
    float _207 = (cos(_206) * 0.01750000007450580596923828125) + dot(_122, _122);
    float _208 = _124;
    float _209 = _207;
    float _231 = smoothstep(0.0, 1.0, (1.0 - _209) * _208);
    vec2 _210 = vec2(_231, _207);
    vec2 _120 = _210;
    vec2 _151 = _97;
    float _153 = _111.z;
    float _157 = _139._m0.y * 0.5;
    float _158 = _139._m0.y * 4.9999998736893758177757263183594e-05;
    float _238 = 6.283185482025146484375 / _157;
    float _239 = atan(_151.y, _151.x) + _153;
    float _240 = step(mod(_239, _238), _158 / length(_151));
    float _164 = (_240 * 0.25) + 0.75;
    float _259 = clamp(_164, 0.0, 1.0);
    float _136 = _259;
    _167 = vec4(_168 * (_136 * _120.x), 0.0);
}

