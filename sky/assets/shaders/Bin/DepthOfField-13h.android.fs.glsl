#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 0, std140) uniform _46_48
{
    vec4 _m0;
    vec4 _m1;
} _48;

layout(set = 1, binding = 2, std140) uniform _105_107
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
} _107;

layout(set = 1, binding = 3) uniform mediump sampler2D _123;

layout(location = 0) in vec2 _116;
layout(location = 0) out vec4 _128;

void main()
{
    float _30 = 5.0;
    _30 = clamp(log2(_107._m0.y) - 6.0, 1.0, 6.0);
    vec2 _114 = _116;
    vec4 _119 = texture(_123, _114);
    _128 = vec4(f16vec4(_119));
    vec4 _134 = vec4(_128.xyz, 1.0);
    float _142 = _128.w;
    float _310 = _48._m0.x - _48._m0.y;
    float _311 = _48._m0.x + _48._m0.y;
    float _312 = (smoothstep(_48._m0.x, _311, _142) + 1.0) - smoothstep(_310, _48._m0.x, _142);
    float _141 = _312;
    float _149 = _128.w;
    float _336 = mix(_48._m0.w, _48._m0.z, step(_149, _48._m0.x));
    float _147 = _141 * _336;
    float _155 = _147;
    float _347 = clamp(_155, 0.0, 1.0);
    float _154 = round(_347 * _30);
    float _161 = _154 + 1.0;
    for (float _164 = 1.0; _164 <= _154; _164 += 1.0)
    {
        vec2 _174 = _48._m1.xy * (-_164);
        vec2 _184 = _174;
        float _186 = _161;
        float _351 = length(_184);
        float _352 = 1.0 - smoothstep(0.0, _186, _351);
        float _183 = _352;
        vec2 _199 = _114 + ((_174 * _107._m0.zw) * _147);
        vec2 _360 = clamp(_199, vec2(0.0), vec2(1.0));
        vec2 _189 = _360;
        vec4 _201 = texture(_123, _189);
        float _206 = _201.w;
        float _366 = _48._m0.x - _48._m0.y;
        float _367 = _48._m0.x + _48._m0.y;
        float _368 = (smoothstep(_48._m0.x, _367, _206) + 1.0) - smoothstep(_366, _48._m0.x, _206);
        float _205 = min(_368, _141) * _183;
        _134 += vec4(_201.xyz * _205, _205);
    }
    for (float _227 = 1.0; _227 <= _154; _227 += 1.0)
    {
        vec2 _236 = _48._m1.xy * _227;
        vec2 _243 = _236;
        float _245 = _161;
        float _392 = length(_243);
        float _393 = 1.0 - smoothstep(0.0, _245, _392);
        float _242 = _393;
        vec2 _258 = _114 + ((_236 * _107._m0.zw) * _147);
        vec2 _401 = clamp(_258, vec2(0.0), vec2(1.0));
        vec2 _248 = _401;
        vec4 _260 = texture(_123, _248);
        float _265 = _260.w;
        float _407 = _48._m0.x - _48._m0.y;
        float _408 = _48._m0.x + _48._m0.y;
        float _409 = (smoothstep(_48._m0.x, _408, _265) + 1.0) - smoothstep(_407, _48._m0.x, _265);
        float _264 = min(_409, _141) * _242;
        _134 += vec4(_260.xyz * _264, _264);
    }
    vec3 _294 = vec3(f16vec3(_134.xyz / vec3(_134.w)));
    _128.x = _294.x;
    _128.y = _294.y;
    _128.z = _294.z;
}

