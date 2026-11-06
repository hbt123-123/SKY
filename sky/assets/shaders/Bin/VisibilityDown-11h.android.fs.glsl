#version 450

layout(set = 1, binding = 0, std140) uniform _41_43
{
    float _m0;
} _43;

layout(set = 1, binding = 3) uniform sampler2D _39;

layout(location = 0) in vec2 _112;

void main()
{
    ivec2 _35 = textureSize(_39, int(_43._m0));
    bool _53 = (_35.x & 1) != 0;
    bool _60 = (_35.y & 1) != 0;
    bool _65 = true;
    bvec2 _87;
    if (_65)
    {
        if (_53)
        {
            _35.x -= 3;
        }
        if (_60)
        {
            _35.y -= 3;
        }
        _87 = equal((ivec2(2) * ivec2(gl_FragCoord.xy)), _35);
    }
    else
    {
        _87 = bvec2(_53, _60);
    }
    vec4 _109;
    if (_43._m0 == 0.0)
    {
        _109 = textureGatherOffset(_39, _112, ivec2(0));
        if (any(_87))
        {
            vec4 _124;
            if (_87.x)
            {
                _124 = textureGatherOffset(_39, _112, ivec2(1, 0));
                if (_87.y)
                {
                    vec4 _133 = textureGatherOffset(_39, _112, ivec2(1));
                    _124 = min(_124, _133);
                }
            }
            if (_87.y)
            {
                _124 = textureGatherOffset(_39, _112, ivec2(0, 1));
            }
            _109 = min(_124, _109);
        }
    }
    else
    {
        _109.x = textureOffset(_39, _112, ivec2(0, 1)).x;
        _109.y = textureOffset(_39, _112, ivec2(1)).x;
        _109.z = textureOffset(_39, _112, ivec2(1, 0)).x;
        _109.w = textureOffset(_39, _112, ivec2(0)).x;
        if (any(_87))
        {
            vec4 _177 = _109;
            if (_87.x)
            {
                _177.x = textureOffset(_39, _112, ivec2(2, 0)).x;
                _177.y = textureOffset(_39, _112, ivec2(2, 1)).x;
                if (_87.y)
                {
                    float _199 = textureOffset(_39, _112, ivec2(2)).x;
                    _177.x = min(_177.x, _199);
                }
            }
            if (_87.y)
            {
                _177.z = textureOffset(_39, _112, ivec2(0, 2)).x;
                _177.w = textureOffset(_39, _112, ivec2(1, 2)).x;
            }
            _109 = min(_177, _109);
        }
    }
    vec4 _230 = _109;
    float _251 = min(min(_230.x, _230.y), min(_230.z, _230.w));
    float _229 = _251;
    gl_FragDepth = _229;
}

