#version 450

layout(set = 1, binding = 0, std140) uniform _119_121
{
    float _m0;
} _121;

layout(set = 1, binding = 3) uniform mediump sampler2D _96;

layout(location = 1) in vec2 _100;
layout(location = 0) in vec4 _114;
layout(location = 0) out vec4 _155;
layout(location = 1) out vec4 _167;

void main()
{
    vec4 _92 = vec4(texture(_96, _100).x);
    vec4 _105 = vec4(0.0);
    if (_92.w > 0.0)
    {
        vec4 _115 = _114;
        float _216 = _115.w;
        vec4 _217 = _115;
        vec3 _219 = _217.xyz * _216;
        _115.x = _219.x;
        _115.y = _219.y;
        _115.z = _219.z;
        vec4 _213 = _115;
        _105 = _92 * _213;
    }
    if (_121._m0 > 0.5)
    {
        vec3 _132 = vec3(0.0034399232827126979827880859375, 0.3674813807010650634765625, 0.0);
        float _136 = dot(_105.xyz, _132);
        vec3 _144 = vec3(_136, _136, _136);
        _105.x = _144.x;
        _105.y = _144.y;
        _105.z = _144.z;
    }
    vec4 _151 = _105;
    if (_151.w > 0.0)
    {
        float _234 = _151.w;
        vec4 _235 = _151;
        vec3 _238 = _235.xyz / vec3(_234);
        _151.x = _238.x;
        _151.y = _238.y;
        _151.z = _238.z;
    }
    else
    {
        _151.x = 0.0;
        _151.y = 0.0;
        _151.z = 0.0;
    }
    vec4 _227 = _151;
    _105 = _227;
    _155 = vec4(_105.xyz * _105.w, _105.w);
    float _175 = 1.0 / gl_FragCoord.w;
    float _176 = 256.0;
    float _254 = log(_175 * 20.0) * (_176 * 0.079292468726634979248046875);
    float _264 = max(_254, 0.0);
    float _255 = _264;
    _167 = vec4(_255 * _105.w, _105.w * 1000.0, 0.0, _105.w);
}

