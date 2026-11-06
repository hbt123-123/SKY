#version 450

layout(set = 1, binding = 0, std140) uniform _196_198
{
    vec4 _m0;
} _198;

layout(set = 1, binding = 1, std140) uniform _216_218
{
    vec4 _m0;
    vec2 _m1;
} _218;

layout(set = 1, binding = 3) uniform mediump samplerCube _257;

layout(location = 0) in vec2 _231;
layout(location = 0) out vec4 _253;

void main()
{
    float _194 = _198._m0.x;
    float _204 = _198._m0.y;
    float _207 = _198._m0.z;
    float _211 = _198._m0.w;
    float _215 = _218._m0.x / _218._m0.y;
    vec2 _236 = _231;
    float _238 = _211;
    float _240 = _215;
    vec2 _269 = _236 - vec2(0.5);
    _269.x *= _240;
    float _270 = atan(_269.y, _269.x);
    _270 = mod(_270 + 6.283185482025146484375, 6.283185482025146484375);
    float _271 = _270 / 6.283185482025146484375;
    float _272 = length(_269);
    float _273 = clamp(pow(_272, _238), 0.0, 1.0);
    float _274 = (_271 * 2.0) * 3.1415927410125732421875;
    float _275 = (_273 * 3.1415927410125732421875) - 1.57079637050628662109375;
    vec3 _276 = vec3(cos(_275) * cos(_274), sin(_275), cos(_275) * sin(_274));
    vec3 _229 = _276;
    float _243 = _194;
    float _245 = _204;
    float _247 = _207;
    float _321 = cos(_243);
    float _322 = sin(_243);
    float _323 = cos(_245);
    float _324 = sin(_245);
    float _325 = cos(_247);
    float _326 = sin(_247);
    mat3 _328 = mat3(vec3((_321 * _325) + ((_322 * _324) * _326), ((_322 * _324) * _325) - (_321 * _326), _322 * _323), vec3(_323 * _326, _323 * _325, -_324), vec3(((-_322) * _325) + ((_321 * _324) * _326), ((_321 * _324) * _325) + (_322 * _326), _321 * _323));
    _229 = _328 * _229;
    _253 = textureLod(_257, _229, 0.0);
}

