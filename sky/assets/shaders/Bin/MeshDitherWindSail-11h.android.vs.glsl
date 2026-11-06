#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _96_98
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
} _98;

layout(set = 0, binding = 0, std140) uniform _121_123
{
    mat4 _m0;
    float _m1;
    float _m2;
    float _m3;
    vec3 _m4;
    vec3 _m5;
} _123;

layout(set = 0, binding = 3) uniform samplerCube _83;
layout(set = 0, binding = 5) uniform mediump sampler2D _151;
layout(set = 0, binding = 4) uniform mediump sampler2D _222;

layout(location = 0) in vec3 _112;
layout(location = 2) in vec3 _115;
layout(location = 4) in vec4 _154;
layout(location = 1) in vec4 _236;
layout(location = 0) out vec3 _253;
layout(location = 1) out vec4 _289;
layout(location = 3) out vec3 _291;
layout(location = 6) out vec3 _305;
layout(location = 7) out vec3 _313;
layout(location = 4) out vec4 _319;
layout(location = 3) in vec4 _320;
layout(location = 5) out vec4 _322;
layout(location = 2) out vec4 _324;

void main()
{
    vec3 _110 = _112;
    vec3 _114 = _115;
    f16vec3 _120 = f16vec3(_123._m4);
    f16vec3 _129 = f16vec3(_123._m5);
    float16_t _135 = float16_t(0.2998046875);
    float16_t _137 = float16_t(_123._m2);
    float16_t _141 = _137;
    float16_t _143 = dot(_120, _129);
    float16_t _147 = float16_t(textureLod(_151, _154.xy, 0.0).x);
    _141 *= _143;
    f16vec3 _164 = f16vec3(mix(_129 * _143, _120, f16vec3(_135)));
    f16vec3 _176 = ((_164 * _141) * float16_t(_123._m3)) * _147;
    _110 += vec3(_176);
    vec3 _191 = (_123._m0 * vec4(_110, 1.0)).xyz;
    vec2 _203 = fract(((_191.xz * 0.039999999105930328369140625) + _98._m68.xz) + vec2(_191.y * 0.0500000007450580596923828125));
    vec4 _221 = textureLod(_222, _203, 0.0);
    vec2 _226 = smoothstep(vec2(0.0), vec2(1.0), _221.xy) - vec2(0.5);
    vec3 _244 = _191;
    vec2 _246 = _244.xz + ((_226 * _236.w) * _123._m2);
    _191.x = _246.x;
    _191.z = _246.y;
    mat4 _254 = _123._m0;
    vec3 _257 = _114;
    mat4 _359 = _254;
    mat3 _368 = mat3(vec3(cross(_359[1].xyz, _359[2].xyz)), vec3(cross(_359[2].xyz, _359[0].xyz)), vec3(cross(_359[0].xyz, _359[1].xyz)));
    vec3 _360 = normalize(_368 * _257);
    _253 = _360;
    vec3 _260 = _191;
    if (_123._m1 != 0.0)
    {
        _260.y = _98._m96 - _260.y;
    }
    vec4 _285 = vec4(_260, 1.0);
    vec4 _286 = _98._m8 * _285;
    gl_Position = _286;
    _289 = _236;
    _291 = _98._m17 - _191;
    vec3 _297 = normalize(_291);
    vec3 _300 = reflect(-_297, _253);
    vec3 _308 = _253;
    float _310 = 5.0;
    vec4 _404 = textureLod(_83, _308, _310);
    vec3 _405 = (_404.xyz * _404.xyz) * (_98._m43 / _404.w);
    _305 = vec3(1.0) / _405;
    vec3 _314 = _300;
    float _316 = 5.0;
    vec4 _422 = textureLod(_83, _314, _316);
    vec3 _423 = (_422.xyz * _422.xyz) * (_98._m43 / _422.w);
    _313 = vec3(1.0) / _423;
    _319 = _320;
    _322 = _154;
    vec3 _335 = mix(_98._m51, _98._m47, vec3(0.25)) * 0.100000001490116119384765625;
    _324.x = _335.x;
    _324.y = _335.y;
    _324.z = _335.z;
    _324.w = 1.0;
}

