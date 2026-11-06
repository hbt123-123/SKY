#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _90_92
{
    mat4 _m0;
    vec3 _m1;
    float _m2;
    vec4 _m3;
    vec4 _m4;
    float _m5;
} _92;

layout(set = 0, binding = 2, std140) uniform _101_103
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
} _103;

layout(set = 0, binding = 1, std140) uniform _108_110
{
    vec4 _m0;
    vec2 _m1;
} _110;

layout(location = 4) in float _88;
layout(location = 0) in vec3 _127;
layout(location = 2) out vec3 _136;
layout(location = 1) out vec3 _143;
layout(location = 1) in vec3 _144;
layout(location = 0) out vec4 _152;
layout(location = 2) in vec4 _155;
layout(location = 3) out vec2 _165;
layout(location = 3) in vec2 _167;

void main()
{
    vec3 _122 = (_92._m0 * vec4(_127, 1.0)).xyz;
    _136 = _103._m17 - _122;
    mat4 _145 = _92._m0;
    vec3 _148 = _144;
    mat4 _216 = _145;
    mat3 _225 = mat3(vec3(cross(_216[1].xyz, _216[2].xyz)), vec3(cross(_216[2].xyz, _216[0].xyz)), vec3(cross(_216[0].xyz, _216[1].xyz)));
    vec3 _217 = normalize(_225 * _148);
    _143 = _217;
    _152 = vec4(1.0, 1.0, 1.0, _155.w);
    _152.z = 1.0;
    _165 = (_167 + _92._m3.xy) + (_92._m4.xy * _103._m20);
    _152.w = 1.0;
    vec3 _185 = _122;
    if (_92._m2 != 0.0)
    {
        _185.y = _103._m96 - _185.y;
    }
    vec4 _207 = vec4(_185, 1.0);
    vec4 _208 = _103._m8 * _207;
    gl_Position = _208;
    float _261 = (((_88 * _92._m5) * _103._m18) * _110._m0.y) / gl_Position.w;
    float _262 = _261;
    gl_PointSize = _262;
}

