#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _22;

layout(location = 3) in vec2 _11;
layout(location = 0) in vec4 _17;
layout(location = 1) in vec3 _32;
layout(location = 2) in vec3 _42;
layout(location = 0) out vec4 _51;

void main()
{
    do
    {
        vec2 _9 = _11;
        vec4 _15 = _17 * texture(_22, _9);
        vec4 _27 = _15;
        bool _39 = _32.x == (-1000000000.0);
        bool _46;
        if (_39)
        {
            _46 = _42.x == (-1000000000.0);
        }
        else
        {
            _46 = _39;
        }
        if (_46)
        {
            break;
        }
        _51 = vec4(_27.xyz, 0.0);
        break;
    } while(false);
}

