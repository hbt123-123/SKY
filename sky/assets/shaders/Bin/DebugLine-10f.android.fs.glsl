#version 450

layout(set = 1, binding = 1, std140) uniform _15_17
{
    vec4 _m0;
    vec2 _m1;
} _17;

layout(set = 1, binding = 0) uniform sampler2D _30;

layout(location = 0) in vec4 _45;
layout(location = 1) in float _53;
layout(location = 0) out vec4 _99;

void main()
{
    vec2 _9 = gl_FragCoord.xy * _17._m0.zw;
    float _26 = textureLod(_30, _9, 0.0).x;
    float _38 = gl_FragCoord.z;
    vec4 _44 = _45;
    if (_38 <= _26)
    {
        if (_53 >= 4.0)
        {
        }
        else
        {
            if (_53 >= 2.0)
            {
                _44.w *= 0.699999988079071044921875;
            }
            else
            {
                if (_53 >= 1.0)
                {
                    vec4 _78 = _44;
                    vec3 _84 = mix(_78.xyz, vec3(0.25), vec3(0.625));
                    _44.x = _84.x;
                    _44.y = _84.y;
                    _44.z = _84.z;
                    _44.w *= 0.699999988079071044921875;
                }
                else
                {
                    _44 = vec4(0.0);
                }
            }
        }
    }
    _99.x = _44.xyz.x;
    _99.y = _44.xyz.y;
    _99.z = _44.xyz.z;
    _99.w = _44.w;
}

