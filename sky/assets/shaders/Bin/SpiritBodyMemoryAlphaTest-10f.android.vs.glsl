#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _74_76
{
    mat4 _m0;
    vec3 _m1;
    float _m2;
    float _m3;
    float _m4;
    float _m5;
    float _m6;
    float _m7;
} _76;

layout(set = 0, binding = 2, std140) uniform _107_109
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
} _109;

layout(location = 0) in vec4 _81;
layout(location = 1) out vec3 _85;
layout(location = 2) in vec3 _87;
layout(location = 0) out vec3 _129;
layout(location = 2) out vec3 _132;
layout(location = 3) out vec4 _143;
layout(location = 3) in vec4 _144;
layout(location = 4) out vec4 _146;
layout(location = 4) in vec4 _147;
layout(location = 5) out vec3 _149;
layout(location = 6) out float _168;

void main()
{
    vec4 _73 = _76._m0 * _81;
    mat4 _88 = _76._m0;
    vec3 _91 = _87;
    mat4 _207 = _88;
    mat3 _216 = mat3(vec3(cross(_207[1].xyz, _207[2].xyz)), vec3(cross(_207[2].xyz, _207[0].xyz)), vec3(cross(_207[0].xyz, _207[1].xyz)));
    vec3 _208 = normalize(_216 * _91);
    _85 = _208;
    vec4 _94 = _73;
    if (_76._m7 != 0.0)
    {
        _94.y = _109._m96 - _73.y;
    }
    vec4 _126 = _109._m8 * _94;
    gl_Position = _126;
    _129 = _73.xyz;
    _132 = _109._m17 - _73.xyz;
    _143 = _144;
    _146 = _147;
    _149 = vec3(sin(_109._m20 * 1.35000002384185791015625), sin(_109._m20 * 2.480000019073486328125), sin(_109._m20 * 1.78999996185302734375));
    float _174;
    if (_76._m6 > 0.5)
    {
        _174 = 1.0 - _146.w;
    }
    else
    {
        _174 = _146.w;
    }
    _168 = _174;
}

