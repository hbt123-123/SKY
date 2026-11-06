#version 450

layout(set = 1, binding = 0, std140) uniform _109_111
{
    float _m0;
} _111;

layout(set = 1, binding = 3) uniform mediump sampler2D _38;

layout(location = 1) in vec2 _42;
layout(location = 2) in vec4 _63;
layout(location = 0) in vec4 _75;
layout(location = 0) out vec4 _141;

void main()
{
    vec4 _34 = texture(_38, _42);
    if (_34.w >= 0.9956862926483154296875)
    {
        _34.w = 1.0;
    }
    vec4 _54 = vec4(0.0);
    if (_34.w > 0.0)
    {
        if (_63.w > 0.0)
        {
            float _70 = _34.x;
            vec3 _74 = mix(_75.xyz * _63.xyz, _75.xyz, vec3(pow(_70, 3.0)));
            _54.w = _70 * _75.w;
            _54.x = _74.x;
            _54.y = _74.y;
            _54.z = _74.z;
            vec4 _100 = _54;
            float _171 = _100.w;
            vec4 _172 = _100;
            vec3 _174 = _172.xyz * _171;
            _100.x = _174.x;
            _100.y = _174.y;
            _100.z = _174.z;
            vec4 _168 = _100;
            _54 = _168;
        }
        else
        {
            vec4 _105 = _75;
            float _185 = _105.w;
            vec4 _186 = _105;
            vec3 _188 = _186.xyz * _185;
            _105.x = _188.x;
            _105.y = _188.y;
            _105.z = _188.z;
            vec4 _182 = _105;
            _54 = _34 * _182;
        }
    }
    if (_111._m0 > 0.5)
    {
        vec3 _121 = vec3(0.0034399232827126979827880859375, 0.3674813807010650634765625, 0.0);
        float _125 = dot(_54.xyz, _121);
        vec3 _133 = vec3(_125, _125, _125);
        _54.x = _133.x;
        _54.y = _133.y;
        _54.z = _133.z;
    }
    _141 = _54;
}

