#version 450

layout(set = 1, binding = 0, std140) uniform _44_46
{
    float _m0;
    float _m1;
    float _m2;
    float _m3;
    float _m4;
} _46;

layout(location = 0) in vec4 _38;
layout(location = 1) in float _42;
layout(location = 0) out vec4 _117;
layout(location = 1) out vec4 _129;

void main()
{
    vec4 _36 = _38;
    float _40 = clamp(_42 / _46._m0, 0.0, 1.0);
    float _55 = pow(mix(0.75, _46._m2, _40), 5.0);
    float _64 = clamp((_42 - _46._m0) / _46._m1, 0.0, 1.0);
    float _74 = pow(mix(_46._m2, _46._m3, _64), 5.0);
    float _83 = mix(_55, _74, step(_46._m0, _42));
    float _91 = 3.0;
    vec4 _97 = _36;
    vec3 _99 = _97.xyz * _46._m4;
    _36.x = _99.x;
    _36.y = _99.y;
    _36.z = _99.z;
    _36.w = min(_83 * _91, 1.0);
    _117 = vec4(_36.xyz * _36.w, _36.w);
    float _135 = 1.0 / gl_FragCoord.w;
    float _136 = 256.0;
    float _176 = log(_135 * 20.0) * (_136 * 0.079292468726634979248046875);
    float _186 = max(_176, 0.0);
    float _177 = _186;
    _129 = vec4(_177 * _36.w, _36.w * 1000.0, 0.0, _36.w);
}

