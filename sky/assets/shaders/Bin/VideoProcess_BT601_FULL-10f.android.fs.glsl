#version 450

layout(set = 1, binding = 0) uniform mediump sampler2D _53;
layout(set = 1, binding = 1) uniform mediump sampler2D _62;
layout(set = 1, binding = 2) uniform mediump sampler2D _72;

layout(location = 0) in vec2 _57;
layout(location = 0) out vec4 _116;

void main()
{
    vec3 _49 = textureLod(_53, _57, 0.0).xyz;
    _49.y = texture(_62, _57).x;
    _49.z = texture(_72, _57).x;
    vec4 _80 = vec4(_49, 1.0);
    vec3 _103 = vec3(dot(_80, vec4(1.0, 0.0, 1.401999950408935546875, -0.7009999752044677734375)), dot(_80, vec4(1.0, -0.344136297702789306640625, -0.714136302471160888671875, 0.52913630008697509765625)), dot(_80, vec4(1.0, 1.77199995517730712890625, 0.0, -0.885999977588653564453125)));
    vec3 _128 = clamp(_103, vec3(0.0), vec3(1.0));
    _49 = vec3(_128);
    vec3 _109 = _49;
    vec3 _134 = pow((_109 + vec3(0.054999999701976776123046875)) * 0.94786727428436279296875, vec3(2.400000095367431640625));
    vec3 _135 = _109 * 0.077399380505084991455078125;
    vec3 _136 = mix(_134, _135, lessThan(_109, vec3(0.040449999272823333740234375)));
    _49 = _136;
    _49 = max(_49, vec3(0.0));
    _116 = vec4(_49, 1.0);
}

