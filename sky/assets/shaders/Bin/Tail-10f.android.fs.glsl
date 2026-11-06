#version 450

layout(location = 1) in vec4 _46;
layout(location = 0) in vec2 _51;
layout(location = 0) out vec4 _63;
layout(location = 1) out vec4 _74;

void main()
{
    float _59 = 1.0 - (_51.x * _51.x);
    float _116 = max(_59, 0.0);
    float _45 = _46.w * _116;
    _63 = vec4(_46.xyz * _45, _45);
    float _79 = 1.0 / gl_FragCoord.w;
    float _80 = 256.0;
    float _120 = log(_79 * 20.0) * (_80 * 0.079292468726634979248046875);
    float _130 = max(_120, 0.0);
    float _121 = _130;
    _74 = vec4(_121 * _45, _45 * 1000.0, 0.0, _45);
}

