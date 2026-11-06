#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _33_35
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
} _35;

layout(set = 0, binding = 0, std140) uniform _99_101
{
    mat4 _m0;
    mat4 _m1;
    float _m2;
    float _m3;
} _101;

layout(set = 0, binding = 3) uniform mediump sampler2D _133;

layout(location = 1) in vec3 _84;
layout(location = 0) in vec3 _87;
layout(location = 2) in vec4 _135;
layout(location = 0) out vec3 _194;

void main()
{
    vec3 _82 = _84;
    vec3 _86 = _87;
    vec3 _98;
    if (_35._m62 > 0.001000000047497451305389404296875)
    {
        _98 = (_101._m1 * vec4(_86, 1.0)).xyz;
    }
    else
    {
        _98 = (_101._m0 * vec4(_82, 1.0)).xyz;
    }
    vec4 _124 = _101._m1 * vec4(_86, 1.0);
    vec3 _137 = _124.xyz;
    float _140 = _135.w;
    float _145 = _101._m3;
    float _212 = 0.039999999105930328369140625;
    vec2 _213 = fract(((_137.xz * _212) + _35._m68.xz) + vec2(_137.y * 0.0500000007450580596923828125));
    vec4 _214 = textureLod(_133, _213, 0.0);
    vec2 _215 = smoothstep(vec2(0.0), vec2(1.0), _214.xy) - vec2(0.5);
    float _216 = min(0.4000000059604644775390625, 1.0 - _140);
    _216 = pow(_216, 1.7000000476837158203125) * _145;
    vec2 _217 = _215 * _216;
    vec4 _149 = _124;
    vec2 _151 = _149.xz + _217;
    _124.x = _151.x;
    _124.z = _151.y;
    vec3 _158 = _98;
    float _160 = _135.w;
    float _163 = _101._m3;
    float _251 = 0.039999999105930328369140625;
    vec2 _252 = fract(((_158.xz * _251) + _35._m68.xz) + vec2(_158.y * 0.0500000007450580596923828125));
    vec4 _253 = textureLod(_133, _252, 0.0);
    vec2 _254 = smoothstep(vec2(0.0), vec2(1.0), _253.xy) - vec2(0.5);
    float _255 = min(0.4000000059604644775390625, 1.0 - _160);
    _255 = pow(_255, 1.7000000476837158203125) * _163;
    vec2 _256 = _254 * _255;
    vec3 _167 = _98;
    vec2 _169 = _167.xz + _256;
    _98.x = _169.x;
    _98.z = _169.y;
    if (_101._m2 != 0.0)
    {
        _124.y = _35._m96 - _124.y;
        _98.y = _35._m96 - _98.y;
    }
    _194 = _98;
    vec4 _203 = _35._m8 * _124;
    gl_Position = _203;
}

