#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

layout(set = 1, binding = 2, std140) uniform _106_108
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
} _108;

layout(set = 1, binding = 1, std140) uniform _148_150
{
    vec4 _m0;
    vec2 _m1;
} _150;

layout(set = 1, binding = 0) uniform mediump sampler2D _66;
layout(set = 1, binding = 3) uniform mediump sampler2D _165;

layout(location = 1) in vec4 _205;
layout(location = 0) in vec4 _210;
layout(location = 0) out vec4 _223;
layout(location = 1) out vec4 _249;

void main()
{
    vec2 _143 = gl_FragCoord.xy * _150._m0.zw;
    float _156 = 1.0 / gl_FragCoord.w;
    float _173 = max(texture(_165, _143).x, 1.0000000116860974230803549289703e-07);
    float _302 = 1.0 / _173;
    float _161 = _108._m24 * _302;
    float _176 = _161 - _156;
    float _183 = _176 * 0.100000001490116119384765625;
    float _306 = clamp(_183, 0.0, 1.0);
    float _180 = _306;
    float _185 = mix(1.0, 0.1500000059604644775390625, smoothstep(15.0, 50.0, _156));
    _185 *= mix(0.0, 1.0, smoothstep(_108._m24 + 0.5, _108._m24 + 1.5, _156));
    vec2 _211 = _205.xy;
    int _214 = int(_205.z);
    float _218 = _210.x;
    vec4 _310 = vec4(f16vec4(texture(_66, _211)));
    float _311 = _310[_214];
    float _312 = _310[_214 + 2];
    float _313 = mix(_311, _312, _218);
    vec3 _314 = vec3(0.5, 0.0, 0.0);
    _314 += ((vec3(0.0, 0.100000001490116119384765625, 0.0) * _313) * _313);
    float _315 = (1.0 + _108._m55.w) * mix(60.0, 60.0, _218);
    _314 *= (_108._m55.xyz * _315);
    float _316 = _313 * _315;
    float _367 = clamp(_316, 0.0, 1.0);
    vec4 _317 = vec4((_314 * _313) * _315, _367);
    vec4 _204 = _317;
    _223 = vec4((((_204.xyz * _204.w) * _185) * _210.w) * _180, ((_204.w * _185) * _210.w) * _180);
    float _251 = _156;
    float _253 = 256.0;
    float _371 = log(_251 * 20.0) * (_253 * 0.079292468726634979248046875);
    float _381 = max(_371, 0.0);
    float _372 = _381;
    _249 = vec4((((_372 * _204.w) * _185) * _210.w) * _180, (((_204.w * _185) * _210.w) * _180) * 1000.0, 0.0, ((_204.w * _185) * _210.w) * _180);
}

