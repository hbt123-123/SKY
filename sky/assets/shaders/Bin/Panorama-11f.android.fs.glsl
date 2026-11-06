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
    vec2 _271 = _236 - vec2(0.5);
    _271.x *= _240;
    float _272 = atan(_271.y, _271.x);
    _272 = mod(_272 + 6.283185482025146484375, 6.283185482025146484375);
    float _273 = _272 / 6.283185482025146484375;
    float _274 = length(_271);
    float _275 = clamp(pow(_274, _238), 0.0, 1.0);
    float _276 = (_273 * 2.0) * 3.1415927410125732421875;
    float _277 = (_275 * 3.1415927410125732421875) - 1.57079637050628662109375;
    vec3 _278 = vec3(cos(_277) * cos(_276), sin(_277), cos(_277) * sin(_276));
    vec3 _229 = _278;
    float _243 = _194;
    float _245 = _204;
    float _247 = _207;
    float _323 = cos(_243);
    float _324 = sin(_243);
    float _325 = cos(_245);
    float _326 = sin(_245);
    float _327 = cos(_247);
    float _328 = sin(_247);
    mat3 _330 = mat3(vec3((_323 * _327) + ((_324 * _326) * _328), ((_324 * _326) * _327) - (_323 * _328), _324 * _325), vec3(_325 * _328, _325 * _327, -_326), vec3(((-_324) * _327) + ((_323 * _326) * _328), ((_323 * _326) * _327) + (_324 * _328), _323 * _325));
    _229 = _330 * _229;
    _253 = textureLod(_257, _229, 0.0);
}

