#version 450

layout(set = 1, binding = 3) uniform mediump sampler2D _49;

layout(location = 3) in vec2 _38;
layout(location = 0) in vec4 _44;
layout(location = 1) in vec3 _59;
layout(location = 2) in vec3 _69;
layout(location = 0) out vec4 _78;
layout(location = 1) out vec4 _91;

void main()
{
    do
    {
        vec2 _36 = _38;
        vec4 _42 = _44 * texture(_49, _36);
        vec4 _54 = _42;
        bool _66 = _59.x == (-1000000000.0);
        bool _73;
        if (_66)
        {
            _73 = _69.x == (-1000000000.0);
        }
        else
        {
            _73 = _66;
        }
        if (_73)
        {
            break;
        }
        _78 = vec4(_54.xyz * _54.w, _54.w);
        float _100 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
        float _101 = 256.0;
        float _148 = log(_100 * 20.0) * (_101 * 0.079292468726634979248046875);
        float _158 = max(_148, 0.0);
        float _149 = _158;
        _91 = vec4(_149 * _54.w, _54.w * 1000.0, 0.0, _54.w);
        break;
    } while(false);
}

