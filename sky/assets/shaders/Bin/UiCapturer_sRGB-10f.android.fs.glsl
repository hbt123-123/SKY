#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _13;

layout(location = 0) in vec2 _17;
layout(location = 0) out vec4 _46;

void main()
{
    vec4 _9 = texture(_13, _17);
    vec4 _20 = step(_9, vec4(0.003130800090730190277099609375));
    vec4 _25 = (vec4(1.05499994754791259765625) * pow(_9, vec4(0.4166666567325592041015625))) - vec4(0.054999999701976776123046875);
    vec4 _36 = _9 * vec4(12.9200000762939453125);
    _9 = mix(_25, _36, _20);
    _46 = _9;
}

