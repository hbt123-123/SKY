#version 450

layout(set = 1, binding = 0, std140) uniform _37_39
{
    vec2 _m0;
    float _m1;
    float _m2;
} _39;

layout(set = 1, binding = 3) uniform mediump sampler2D _53;

layout(location = 0) in vec4 _55;
layout(location = 0) out vec4 _127;

void main()
{
    float _17 = 1.0030000209808349609375;
    vec2 _23 = (fract(gl_FragCoord.xy * 0.5) * (-4.0)) + vec2(2.0);
    _23 /= _39._m0;
    vec3 _49 = texture(_53, _55.zw + (_23 * vec2(0.4000000059604644775390625))).xyz * 4.0;
    vec3 _67 = texture(_53, _55.zw + (_23 * vec2(0.4000000059604644775390625, -0.800000011920928955078125))).xyz * 2.0;
    vec3 _79 = texture(_53, _55.zw + (_23 * vec2(-0.800000011920928955078125, 0.4000000059604644775390625))).xyz * 2.0;
    vec3 _90 = texture(_53, _55.zw + (_23 * vec2(-0.800000011920928955078125))).xyz;
    float _106 = _39._m2;
    float _148 = 1.0 / _106;
    float _100 = 0.300000011920928955078125 * _148;
    vec3 _109 = (((_49 + _67) + _79) + _90) * _100;
    float _119 = _17;
    float _152 = 1.0 / _119;
    _109 *= vec3(_152, 1.0, _17);
    _127 = vec4(_109, _39._m1);
}

