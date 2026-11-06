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
        float _214 = _115.w;
        vec4 _215 = _115;
        vec3 _217 = _215.xyz * _214;
        _115.x = _217.x;
        _115.y = _217.y;
        _115.z = _217.z;
        vec4 _211 = _115;
        _105 = _92 * _211;
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
        float _232 = _151.w;
        vec4 _233 = _151;
        vec3 _236 = _233.xyz / vec3(_232);
        _151.x = _236.x;
        _151.y = _236.y;
        _151.z = _236.z;
    }
    else
    {
        _151.x = 0.0;
        _151.y = 0.0;
        _151.z = 0.0;
    }
    vec4 _225 = _151;
    _105 = _225;
    _155 = vec4(_105.xyz * _105.w, _105.w);
    float _175 = 1.0 / gl_FragCoord.w;
    float _176 = 256.0;
    float _252 = log(_175 * 20.0) * (_176 * 0.079292468726634979248046875);
    float _262 = max(_252, 0.0);
    float _253 = _262;
    _167 = vec4(_253 * _105.w, _105.w * 1000.0, 0.0, _105.w);
}

