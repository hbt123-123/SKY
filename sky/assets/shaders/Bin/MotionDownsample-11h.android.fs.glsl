#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 2, std140) uniform _88_90
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
} _90;

layout(set = 1, binding = 3) uniform mediump sampler2D _68;
layout(set = 1, binding = 0) uniform mediump sampler2D _204;

layout(location = 0) in vec2 _62;
layout(location = 0) out vec4 _220;

void main()
{
    vec2 _60 = _62;
    float16_t _64 = abs(f16vec4(texture(_68, _60)).w);
    if (_64 > float16_t(0.040191650390625))
    {
        vec4 _83 = vec4(_60 + (_90._m1.zw * 1.5), _60 - (_90._m1.zw * 1.5));
        vec4 _111 = vec4(_83.x, _60.y, _83.z, 0.0);
        vec4 _121 = vec4(_60.x, _83.y, 0.0, _83.w);
        f16vec4 _131[2];
        _131[0].x = f16vec4(texture(_68, _83.xy)).w;
        _131[0].y = f16vec4(texture(_68, _83.zy)).w;
        _131[0].z = f16vec4(texture(_68, _83.xw)).w;
        _131[0].w = f16vec4(texture(_68, _83.zw)).w;
        _131[1].x = f16vec4(texture(_68, _111.xy)).w;
        _131[1].y = f16vec4(texture(_68, _111.zy)).w;
        _131[1].z = f16vec4(texture(_68, _121.xy)).w;
        _131[1].w = f16vec4(texture(_68, _121.xw)).w;
        f16vec4 _193 = abs(_131[0]);
        float16_t _249 = min(min(_193.x, _193.y), min(_193.z, _193.w));
        _64 = min(_64, _249);
        f16vec4 _200 = abs(_131[1]);
        float16_t _262 = min(min(_200.x, _200.y), min(_200.z, _200.w));
        _64 = min(_64, _262);
    }
    f16vec3 _209 = f16vec4(texture(_204, _60)).xyz;
    f16vec3 _275 = max(f16vec3(float16_t(9.9956989288330078125e-05)), _209);
    f16vec3 _282 = f16vec3(float16_t(1.0)) / _275;
    f16vec3 _276 = _282 - f16vec3(float16_t(1.0));
    f16vec3 _203 = _276;
    f16vec4 _212 = f16vec4(_203, _64);
    _220 = vec4(f16vec4(_212));
}

