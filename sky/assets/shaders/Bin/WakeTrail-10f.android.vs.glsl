#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _37_39
{
    vec4 _m0;
    vec4 _m1;
    float _m2;
} _39;

layout(set = 0, binding = 2, std140) uniform _146_148
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
} _148;

layout(location = 0) in vec3 _22;
layout(location = 0) out vec2 _26;
layout(location = 1) in vec2 _28;
layout(location = 1) out vec2 _30;
layout(location = 2) in vec2 _31;
layout(location = 2) out vec3 _139;

void main()
{
    vec3 _20 = _22;
    _26 = _28;
    _30 = _31;
    float _33 = length(_20.xz - _39._m1.xz);
    float _48 = _31.y;
    float _60 = (_48 - 0.75) / 0.25;
    float _167 = clamp(_60, 0.0, 1.0);
    float _54 = _167;
    float _62 = 1.0 - ((_54 * _54) * (3.0 - (2.0 * _54)));
    float _79 = (_33 - 0.5) / 0.800000011920928955078125;
    float _171 = clamp(_79, 0.0, 1.0);
    float _73 = _171;
    float _81 = _48 * _39._m2;
    float _92 = (_81 - 0.25) / 0.5;
    float _175 = clamp(_92, 0.0, 1.0);
    float _88 = _175;
    float _94 = ((_28.y * _62) * _73) * _88;
    _94 = min(_94, 0.5);
    _26.y = _94;
    float _108 = dot(_20, _39._m0.xyz) + _39._m0.w;
    bool _121 = _108 < 0.0;
    bool _128;
    if (_121)
    {
        _128 = _33 < _39._m1.w;
    }
    else
    {
        _128 = _121;
    }
    if (_128)
    {
        _20 -= (_39._m0.xyz * _108);
    }
    _139 = _20;
    vec4 _157 = vec4(_20, 1.0);
    vec4 _158 = _148._m8 * _157;
    gl_Position = _158;
}

