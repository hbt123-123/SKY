#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _31;

layout(location = 1) in vec4 _33;
layout(location = 0) out vec4 _47;

void main()
{
    vec2 _9 = vec2(0.0);
    float _13 = 1.0 / gl_FragCoord.w;
    float _24 = 0.00019999999494757503271102905273438;
    vec4 _27 = texture(_31, _33.xy);
    if (_27.x < 0.5)
    {
        discard;
    }
    _47 = vec4(_9, _13, _24);
}

