#version 450

layout(set = 1, binding = 1, std140) uniform _305_307
{
    vec4 _m0;
    vec2 _m1;
} _307;

layout(set = 1, binding = 0) uniform mediump sampler2D _304;

layout(location = 0) in vec2 _301;
layout(location = 0) out vec4 _318;

void main()
{
    vec2 _299 = _301;
    vec2 _309 = _299;
    vec2 _311 = _307._m0.zw;
    vec3 _335 = vec3(0.25, 0.60000002384185791015625, 0.1500000059604644775390625);
    vec4 _336 = texture(_304, _309);
    vec3 _337 = textureOffset(_304, _309, ivec2(-1)).xyz;
    vec3 _338 = textureOffset(_304, _309, ivec2(1, -1)).xyz;
    vec3 _339 = textureOffset(_304, _309, ivec2(-1, 1)).xyz;
    vec3 _340 = textureOffset(_304, _309, ivec2(1)).xyz;
    vec3 _341 = _336.xyz;
    float _342 = dot(_337, _335);
    float _343 = dot(_338, _335);
    float _344 = dot(_339, _335);
    float _345 = dot(_340, _335);
    float _346 = dot(_341, _335);
    float _348 = _346;
    float _349 = _342;
    float _350 = _343;
    float _351 = min(_344, _345);
    float _536 = min(min(_348, _349), min(_350, _351));
    float _347 = _536;
    float _353 = _346;
    float _354 = _342;
    float _355 = _343;
    float _356 = max(_344, _345);
    float _545 = max(max(_353, _354), max(_355, _356));
    float _352 = _545;
    vec2 _357;
    _357.x = -((_342 + _343) - (_344 + _345));
    _357.y = (_342 + _344) - (_343 + _345);
    float _358 = max((((_342 + _343) + _344) + _345) * 0.02083333395421504974365234375, 0.0078125);
    vec2 _360 = abs(_357);
    float _554 = min(_360.x, _360.y);
    float _361 = _554 + _358;
    float _561 = 1.0 / _361;
    float _359 = _561;
    _357 = clamp(_357 * _359, vec2(-8.0), vec2(8.0)) * vec2(_311);
    vec2 _362 = _357;
    vec2 _363 = _309 - (_362 * 0.5);
    vec2 _364 = _363 + (_362 * 0.3333333432674407958984375);
    vec2 _365 = _363 + (_362 * 0.666666686534881591796875);
    vec2 _366 = _309 + (_362 * 0.5);
    mediump vec3 _486 = texture(_304, _363).xyz;
    vec3 hp_copy_486 = _486;
    mediump vec3 _491 = texture(_304, _366).xyz;
    vec3 hp_copy_491 = _491;
    vec3 _367 = (hp_copy_486 * 0.5) + (hp_copy_491 * 0.5);
    mediump vec3 _499 = texture(_304, _364).xyz;
    vec3 hp_copy_499 = _499;
    mediump vec3 _505 = texture(_304, _365).xyz;
    vec3 hp_copy_505 = _505;
    vec3 _368 = ((_367 * 0.5) + (hp_copy_499 * 0.25)) + (hp_copy_505 * 0.25);
    float _369 = dot(_368, _335);
    vec4 _370;
    if ((_369 < _347) || (_369 > _352))
    {
        _370 = vec4(_367, _336.w);
    }
    else
    {
        _370 = vec4(_368, _336.w);
    }
    vec4 _371 = _370;
    vec4 _303 = _371;
    _318 = vec4(_303);
}

