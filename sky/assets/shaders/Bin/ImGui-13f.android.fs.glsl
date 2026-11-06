#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _60;

layout(location = 2) in vec4 _21;
layout(location = 0) in vec2 _63;
layout(location = 0) out vec4 _67;
layout(location = 1) in vec4 _68;

void main()
{
    vec2 _9 = gl_FragCoord.xy;
    bool _25 = _9.x >= _21.x;
    bool _34;
    if (_25)
    {
        _34 = _9.x <= _21.z;
    }
    else
    {
        _34 = _25;
    }
    bool _43;
    if (_34)
    {
        _43 = _9.y >= _21.y;
    }
    else
    {
        _43 = _34;
    }
    bool _52;
    if (_43)
    {
        _52 = _9.y <= _21.w;
    }
    else
    {
        _52 = _43;
    }
    if (_52)
    {
        vec4 _56 = texture(_60, _63);
        _67 = _68 * _56;
    }
}

