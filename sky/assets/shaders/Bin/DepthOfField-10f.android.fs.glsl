#version 450

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
    _128 = vec4(_119);
    vec4 _135 = vec4(_128.xyz, 1.0);
    float _143 = _128.w;
    float _311 = _48._m0.x - _48._m0.y;
    float _312 = _48._m0.x + _48._m0.y;
    float _313 = (smoothstep(_48._m0.x, _312, _143) + 1.0) - smoothstep(_311, _48._m0.x, _143);
    float _142 = _313;
    float _150 = _128.w;
    float _337 = mix(_48._m0.w, _48._m0.z, step(_150, _48._m0.x));
    float _148 = _142 * _337;
    float _156 = _148;
    float _348 = clamp(_156, 0.0, 1.0);
    float _155 = round(_348 * _30);
    float _162 = _155 + 1.0;
    for (float _165 = 1.0; _165 <= _155; _165 += 1.0)
    {
        vec2 _175 = _48._m1.xy * (-_165);
        vec2 _185 = _175;
        float _187 = _162;
        float _352 = length(_185);
        float _353 = 1.0 - smoothstep(0.0, _187, _352);
        float _184 = _353;
        vec2 _200 = _114 + ((_175 * _107._m0.zw) * _148);
        vec2 _361 = clamp(_200, vec2(0.0), vec2(1.0));
        vec2 _190 = _361;
        vec4 _202 = texture(_123, _190);
        float _207 = _202.w;
        float _367 = _48._m0.x - _48._m0.y;
        float _368 = _48._m0.x + _48._m0.y;
        float _369 = (smoothstep(_48._m0.x, _368, _207) + 1.0) - smoothstep(_367, _48._m0.x, _207);
        float _206 = min(_369, _142) * _184;
        _135 += vec4(_202.xyz * _206, _206);
    }
    for (float _228 = 1.0; _228 <= _155; _228 += 1.0)
    {
        vec2 _237 = _48._m1.xy * _228;
        vec2 _244 = _237;
        float _246 = _162;
        float _393 = length(_244);
        float _394 = 1.0 - smoothstep(0.0, _246, _393);
        float _243 = _394;
        vec2 _259 = _114 + ((_237 * _107._m0.zw) * _148);
        vec2 _402 = clamp(_259, vec2(0.0), vec2(1.0));
        vec2 _249 = _402;
        vec4 _261 = texture(_123, _249);
        float _266 = _261.w;
        float _408 = _48._m0.x - _48._m0.y;
        float _409 = _48._m0.x + _48._m0.y;
        float _410 = (smoothstep(_48._m0.x, _409, _266) + 1.0) - smoothstep(_408, _48._m0.x, _266);
        float _265 = min(_410, _142) * _243;
        _135 += vec4(_261.xyz * _265, _265);
    }
    vec3 _296 = vec3(_135.xyz / vec3(_135.w));
    _128.x = _296.x;
    _128.y = _296.y;
    _128.z = _296.z;
}

