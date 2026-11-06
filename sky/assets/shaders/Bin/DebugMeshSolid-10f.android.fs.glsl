#version 450

layout(location = 1) in vec4 _55;
layout(location = 0) in vec3 _74;
layout(location = 0) out vec4 _110;

void main()
{
    bool _47 = gl_FrontFacing;
    vec4 _53 = _55;
    if (!_47)
    {
        _53.x = 1.0;
        _53.y = 0.0;
        _53.z = 0.0;
    }
    vec3 _75 = _74;
    vec3 _143 = dFdx(_75);
    vec3 _144 = dFdy(_75);
    vec3 _145 = normalize(cross(_143, _144));
    vec3 _72 = _145;
    float _78 = _72.y;
    float _83 = _78;
    float _155 = (_83 * 0.5) + 0.5;
    float _81 = 0.100000001490116119384765625 + (0.100000001490116119384765625 * _155);
    float _90 = _78;
    float _160 = clamp(_90, 0.0, 1.0);
    float _94 = _81 + _160;
    float _164 = clamp(_94, 0.0, 1.0);
    float _88 = _164;
    vec4 _97 = _53;
    vec3 _99 = _97.xyz * _88;
    _53.x = _99.x;
    _53.y = _99.y;
    _53.z = _99.z;
    vec3 _106 = _53.xyz;
    _110 = vec4(_106, 0.0);
}

