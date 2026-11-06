#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _97_99
{
    float _m0;
    float _m1;
    vec2 _m2;
} _99;

layout(set = 0, binding = 1) uniform mediump sampler2D _114;

layout(location = 0) flat out float _191;

void main()
{
    float _65 = 0.0;
    float _66 = 0.0;
    for (int _68 = 0; _68 < 8; _68++)
    {
        for (int _79 = 0; _79 < 8; _79++)
        {
            vec3 _107 = vec3(float(_68) * 3.3128969669342041015625, float(_79) * 62.439487457275390625, _99._m2.x);
            _107 = fract(_107 * vec3(443.897003173828125, 441.423004150390625, 437.19500732421875));
            _107 += vec3(dot(_107, _107.yzx + vec3(19.1900005340576171875)));
            vec2 _203 = fract((_107.xx + _107.yz) * _107.zy);
            vec2 _88 = fract(_203);
            vec3 _110 = textureLod(_114, _88, 0.0).xyz;
            float _119 = _99._m0 * dot(_110, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
            if (!isnan(_119))
            {
                _119 = clamp(_119, 0.00390625, 200.0);
                vec2 _138 = _88 - vec2(0.5);
                float _149 = 1.0 - dot(_138, _138);
                float _226 = max(_149, 0.0);
                float _143 = _226 * pow(_119, 0.25);
                _65 += (log2(_119) * _143);
                _66 += _143;
            }
        }
    }
    _65 /= _66;
    float _171 = log2(_99._m0);
    float _175 = mix(_171, _65, _99._m1);
    float _181 = clamp(_175, -8.0, 7.643856048583984375);
    _181 = isnan(_181) ? _171 : _181;
    _191 = _181;
    gl_Position = vec4(1.0);
    float _196 = 1.0;
    gl_PointSize = _196;
}

