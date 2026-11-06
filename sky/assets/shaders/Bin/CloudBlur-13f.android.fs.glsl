#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _14;

layout(location = 0) out vec4 _177;

void main()
{
    ivec2 _18 = textureSize(_14, 0);
    mediump ivec2 mp_copy_18 = _18;
    ivec2 _9 = mp_copy_18 - ivec2(1);
    vec4 _24 = vec4(0.0);
    vec4 _27 = vec4(0.0);
    vec3 _30 = vec3(0.5, 2.0, 0.5);
    for (int _35 = -1; _35 < 2; _35++)
    {
        for (int _46 = -1; _46 < 2; _46++)
        {
            ivec2 _54 = ivec2(gl_FragCoord.xy) + ivec2(_46, _35);
            vec4 _65 = texelFetch(_14, _54, 0);
            float _71 = (_30[_46 + 1] * _30[_35 + 1]) * float(all(equal(clamp(_54, ivec2(0), _9), _54)));
            float _92 = float(_65.w > 0.0) * _71;
            float _101 = float(_65.w <= 0.0) * _71;
            _24 += (vec4(_65.xyz, 1.0) * _92);
            _27 += (vec4(_65.xyz, 1.0) * _101);
        }
    }
    vec3 _132 = vec3(0.0);
    if (_24.w == 0.0)
    {
        _132 = _27.xyz / vec3(_27.w);
    }
    else
    {
        if (_27.w == 0.0)
        {
            _132 = _24.xyz / vec3(_24.w);
        }
        else
        {
            _132 = mix(_27.xyz / vec3(_27.w), _24.xyz / vec3(_24.w), vec3(_24.w / 9.0));
        }
    }
    _177 = vec4(_132, float(_24.w > 0.0));
}

