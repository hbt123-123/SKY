#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 2, std140) uniform _85_87
{
    vec4 _m0;
    vec4 _m1;
    vec4 _m2;
    vec4 _m3;
    vec4 _m4;
    vec4 _m5;
    mat4 _m6;
    mat4 _m7;
    mat4 _m8;
    mat4 _m9;
    mat4 _m10;
    mat4 _m11;
    mat4 _m12;
    vec4 _m13;
    vec4 _m14;
    vec4 _m15;
    vec4 _m16;
    vec3 _m17;
    float _m18;
    float _m19;
    float _m20;
    float _m21;
    float _m22;
    float _m23;
    float _m24;
    float _m25;
    uint _m26;
    vec4 _m27;
    vec3 _m28;
    float _m29;
    vec3 _m30;
    float _m31;
    vec4 _m32;
    vec4 _m33;
    vec3 _m34;
    vec3 _m35;
    vec3 _m36;
    vec3 _m37;
    vec3 _m38;
    vec3 _m39;
    vec4 _m40;
    vec2 _m41;
    vec2 _m42;
    float _m43;
    vec3 _m44;
    float _m45;
    vec4 _m46;
    vec3 _m47;
    float _m48;
    vec3 _m49;
    float _m50;
    vec3 _m51;
    float _m52;
    vec3 _m53;
    vec3 _m54;
    vec4 _m55;
    vec4 _m56;
    float _m57;
    float _m58;
    float _m59;
    vec4 _m60;
    vec3 _m61;
    float _m62;
    vec4 _m63;
    vec4 _m64;
    vec4 _m65;
    vec4 _m66;
    vec3 _m67;
    vec3 _m68;
    vec3 _m69;
    vec3 _m70;
    vec4 _m71;
    vec4 _m72;
    vec4 _m73;
    vec4 _m74;
    vec4 _m75;
    vec4 _m76;
    vec3 _m77;
    vec3 _m78;
    vec4 _m79;
    vec4 _m80;
    vec4 _m81;
    vec4 _m82;
    vec3 _m83;
    vec3 _m84;
    vec3 _m85;
    float _m86;
    vec3 _m87;
    float _m88;
    vec3 _m89;
    vec3 _m90;
    float _m91;
    vec3 _m92;
    vec3 _m93;
    vec3 _m94;
    vec3 _m95;
    float _m96;
    vec4 _m97;
    uvec4 _m98;
} _87;

layout(set = 1, binding = 0, std140) uniform _166_168
{
    float _m0;
} _168;

layout(set = 1, binding = 4) uniform mediump sampler2D _75;
layout(set = 1, binding = 3) uniform mediump sampler2D _186;
layout(set = 1, binding = 5) uniform mediump sampler2D _193;

layout(location = 0) in vec2 _79;
layout(location = 0) out vec4 _179;

void main()
{
    do
    {
        f16vec4 _152 = f16vec4(textureLod(_75, _79, 0.0));
        bool _162 = _87._m26 != 0u;
        bool _175;
        if (!_162)
        {
            _175 = _168._m0 > 0.5;
        }
        else
        {
            _175 = _162;
        }
        if (_175)
        {
            _179 = vec4(_152);
            break;
        }
        f16vec2 _185 = f16vec4(textureLod(_186, _79, 0.0)).xy;
        f16vec4 _192 = f16vec4(textureLod(_193, _79 - vec2(_185), 0.0));
        f16vec3 _203 = _152.xyz;
        f16vec3 _265 = f16vec4(textureLod(_75, _79 + _87._m15.xy, 0.0)).xyz;
        f16vec3 _266 = f16vec4(textureLod(_75, _79 + _87._m15.zw, 0.0)).xyz;
        f16vec3 _267 = f16vec4(textureLod(_75, _79 + _87._m16.xy, 0.0)).xyz;
        f16vec3 _268 = f16vec4(textureLod(_75, _79 + _87._m16.zw, 0.0)).xyz;
        f16vec3 _206 = max(_203, max(_265, max(_266, max(_267, _268))));
        f16vec3 _207 = ((((_265 + _266) + _267) + _268) + _203) * float16_t(0.199951171875);
        f16vec3 _201 = _206;
        f16vec3 _202 = _207;
        f16vec3 _211 = _192.xyz;
        f16vec3 _214 = _202;
        f16vec3 _216 = _201;
        f16vec3 _325 = _211 - _214;
        f16vec3 _326 = _216 - _214;
        f16vec3 _327 = _326 / max(abs(_325), f16vec3(float16_t(9.9956989288330078125e-05)));
        float16_t _329 = min(_327.x, min(_327.y, _327.z));
        float16_t _357 = clamp(_329, float16_t(0.0), float16_t(1.0));
        float16_t _328 = _357;
        f16vec3 _330 = _214 + (_325 * _328);
        _192.x = _330.x;
        _192.y = _330.y;
        _192.z = _330.z;
        f16vec4 _225 = _152;
        float16_t _230 = float16_t(0.89990234375);
        float16_t _361 = clamp(_230, float16_t(0.0), float16_t(1.0));
        f16vec3 _233 = mix(_225.xyz, _192.xyz, f16vec3(_361));
        _152.x = _233.x;
        _152.y = _233.y;
        _152.z = _233.z;
        _179 = vec4(_152);
        if (isnan(_179.x))
        {
            _179.x = 0.0;
            _179.z = 0.0;
        }
        break;
    } while(false);
}

