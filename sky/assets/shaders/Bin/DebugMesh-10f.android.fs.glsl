#version 450

layout(set = 1, binding = 1, std140) uniform _15_17
{
    vec4 _m0;
    vec2 _m1;
} _17;

layout(set = 1, binding = 0) uniform sampler2D _30;

layout(location = 0) in vec4 _45;
layout(location = 2) in float _47;
layout(location = 1) in float _69;
layout(location = 0) out vec4 _112;

void main()
{
    vec2 _9 = gl_FragCoord.xy * _17._m0.zw;
    float _26 = textureLod(_30, _9, 0.0).x;
    float _38 = gl_FragCoord.z;
    vec4 _44 = _45;
    if (_47 > 0.5)
    {
        _44.x = 1.0;
        _44.y = 0.0;
        _44.z = 0.0;
    }
    if (_38 <= _26)
    {
        if (_69 >= 4.0)
        {
        }
        else
        {
            if (_69 >= 2.0)
            {
                _44.w *= 0.699999988079071044921875;
            }
            else
            {
                if (_69 >= 1.0)
                {
                    vec4 _92 = _44;
                    vec3 _98 = mix(_92.xyz, vec3(0.25), vec3(0.625));
                    _44.x = _98.x;
                    _44.y = _98.y;
                    _44.z = _98.z;
                    _44.w *= 0.699999988079071044921875;
                }
                else
                {
                    _44 = vec4(0.0);
                }
            }
        }
    }
    _112.x = _44.xyz.x;
    _112.y = _44.xyz.y;
    _112.z = _44.xyz.z;
    _112.w = _44.w;
}

