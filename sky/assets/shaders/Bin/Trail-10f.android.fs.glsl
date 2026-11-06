#version 450

layout(location = 1) in vec4 _46;
layout(location = 0) in vec2 _51;
layout(location = 0) out vec4 _60;
layout(location = 1) out vec4 _71;

void main()
{
    float _56 = 1.0 - dot(_51, _51);
    float _113 = max(_56, 0.0);
    float _45 = _46.w * _113;
    _60 = vec4(_46.xyz * _45, _45);
    float _76 = 1.0 / gl_FragCoord.w;
    float _77 = 256.0;
    float _117 = log(_76 * 20.0) * (_77 * 0.079292468726634979248046875);
    float _127 = max(_117, 0.0);
    float _118 = _127;
    _71 = vec4(_118 * _45, _45 * 1000.0, 0.0, _45);
}

