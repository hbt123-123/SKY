#version 450

layout(set = 1, binding = 0, std140) uniform _63_65
{
    float _m0;
} _65;

layout(set = 1, binding = 3) uniform mediump sampler2D _38;

layout(location = 1) in vec2 _42;
layout(location = 0) in vec4 _58;
layout(location = 0) out vec4 _96;

void main()
{
    vec4 _34 = vec4(texture(_38, _42).x);
    vec4 _47 = vec4(0.0);
    if (_34.w > 0.0)
    {
        vec4 _59 = _58;
        float _126 = _59.w;
        vec4 _127 = _59;
        vec3 _129 = _127.xyz * _126;
        _59.x = _129.x;
        _59.y = _129.y;
        _59.z = _129.z;
        vec4 _123 = _59;
        _47 = _34 * _123;
    }
    if (_65._m0 > 0.5)
    {
        vec3 _76 = vec3(0.0034399232827126979827880859375, 0.3674813807010650634765625, 0.0);
        float _80 = dot(_47.xyz, _76);
        vec3 _88 = vec3(_80, _80, _80);
        _47.x = _88.x;
        _47.y = _88.y;
        _47.z = _88.z;
    }
    _96 = _47;
}

