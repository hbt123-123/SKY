#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 1, std140) uniform _327_329
{
    vec4 _m0;
    vec2 _m1;
} _329;

layout(set = 1, binding = 0) uniform mediump sampler2D _326;

layout(location = 0) in vec2 _323;
layout(location = 0) out vec4 _340;

void main()
{
    vec2 _321 = _323;
    vec2 _331 = _321;
    vec2 _333 = _329._m0.zw;
    f16vec3 _360 = f16vec3(float16_t(0.25), float16_t(0.599609375), float16_t(0.14990234375));
    f16vec4 _361 = f16vec4(texture(_326, _331));
    f16vec3 _362 = f16vec4(textureOffset(_326, _331, ivec2(-1))).xyz;
    f16vec3 _363 = f16vec4(textureOffset(_326, _331, ivec2(1, -1))).xyz;
    f16vec3 _364 = f16vec4(textureOffset(_326, _331, ivec2(-1, 1))).xyz;
    f16vec3 _365 = f16vec4(textureOffset(_326, _331, ivec2(1))).xyz;
    f16vec3 _366 = _361.xyz;
    float16_t _367 = dot(_362, _360);
    float16_t _368 = dot(_363, _360);
    float16_t _369 = dot(_364, _360);
    float16_t _370 = dot(_365, _360);
    float16_t _371 = dot(_366, _360);
    float16_t _373 = _371;
    float16_t _374 = _367;
    float16_t _375 = _368;
    float16_t _376 = min(_369, _370);
    float16_t _570 = min(min(_373, _374), min(_375, _376));
    float16_t _372 = _570;
    float16_t _378 = _371;
    float16_t _379 = _367;
    float16_t _380 = _368;
    float16_t _381 = max(_369, _370);
    float16_t _579 = max(max(_378, _379), max(_380, _381));
    float16_t _377 = _579;
    f16vec2 _382;
    _382.x = -((_367 + _368) - (_369 + _370));
    _382.y = (_367 + _369) - (_368 + _370);
    float16_t _383 = max((((_367 + _368) + _369) + _370) * float16_t(0.0208282470703125), float16_t(0.0078125));
    f16vec2 _385 = abs(_382);
    float16_t _588 = min(_385.x, _385.y);
    float16_t _386 = _588 + _383;
    float16_t _595 = float16_t(1.0) / _386;
    float16_t _384 = _595;
    _382 = clamp(_382 * _384, f16vec2(float16_t(-8.0)), f16vec2(float16_t(8.0))) * f16vec2(_333);
    f16vec2 _388 = _382;
    vec2 _599 = vec2(_388);
    vec2 _387 = _599;
    vec2 _389 = _331 - (_387 * 0.5);
    vec2 _390 = _389 + (_387 * 0.3333333432674407958984375);
    vec2 _391 = _389 + (_387 * 0.666666686534881591796875);
    vec2 _392 = _331 + (_387 * 0.5);
    f16vec3 _393 = (f16vec4(texture(_326, _389)).xyz * float16_t(0.5)) + (f16vec4(texture(_326, _392)).xyz * float16_t(0.5));
    f16vec3 _394 = ((_393 * float16_t(0.5)) + (f16vec4(texture(_326, _390)).xyz * float16_t(0.25))) + (f16vec4(texture(_326, _391)).xyz * float16_t(0.25));
    float16_t _395 = dot(_394, _360);
    f16vec4 _396;
    if ((_395 < _372) || (_395 > _377))
    {
        _396 = f16vec4(_393, _361.w);
    }
    else
    {
        _396 = f16vec4(_394, _361.w);
    }
    f16vec4 _397 = _396;
    f16vec4 _325 = _397;
    _340 = vec4(f16vec4(_325));
}

