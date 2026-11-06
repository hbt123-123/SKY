#version 450

layout(set = 1, binding = 0, std140) uniform _16_18
{
    float _m0;
} _18;

layout(set = 1, binding = 3) uniform sampler2D _14;

layout(location = 0) in vec2 _86;

void main()
{
    ivec2 _9 = textureSize(_14, int(_18._m0));
    bool _28 = (_9.x & 1) != 0;
    bool _37 = (_9.y & 1) != 0;
    bool _43 = true;
    bvec2 _65;
    if (_43)
    {
        if (_28)
        {
            _9.x -= 3;
        }
        if (_37)
        {
            _9.y -= 3;
        }
        _65 = equal((ivec2(2) * ivec2(gl_FragCoord.xy)), _9);
    }
    else
    {
        _65 = bvec2(_28, _37);
    }
    float _83 = texture(_14, _86).x;
    if (any(_65))
    {
        float _98;
        if (_65.x)
        {
            _98 = textureOffset(_14, _86, ivec2(1, 0)).x;
            if (_65.y)
            {
                float _108 = textureOffset(_14, _86, ivec2(1)).x;
                _98 = min(_98, _108);
            }
        }
        else
        {
            _98 = textureOffset(_14, _86, ivec2(0, 1)).x;
        }
        _83 = min(_83, _98);
    }
    gl_FragDepth = _83;
}

