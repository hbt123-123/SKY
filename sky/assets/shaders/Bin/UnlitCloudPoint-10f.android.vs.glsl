#version 450

invariant gl_Position;

layout(set = 0, binding = 0, std140) uniform _98_100
{
    mat4 _m0;
    vec3 _m1;
    float _m2;
    vec4 _m3;
    vec4 _m4;
    float _m5;
} _100;

layout(set = 0, binding = 2, std140) uniform _109_111
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
} _111;

layout(set = 0, binding = 1, std140) uniform _116_118
{
    vec4 _m0;
    vec2 _m1;
} _118;

layout(location = 4) out float _86;
layout(location = 5) in float _89;
layout(location = 4) in float _96;
layout(location = 0) in vec3 _135;
layout(location = 2) out vec3 _144;
layout(location = 1) out vec3 _151;
layout(location = 1) in vec3 _152;
layout(location = 0) out vec4 _160;
layout(location = 2) in vec4 _163;
layout(location = 3) out vec2 _173;
layout(location = 3) in vec2 _175;

void main()
{
    vec3 _130 = (_100._m0 * vec4(_135, 1.0)).xyz;
    _144 = _111._m17 - _130;
    mat4 _153 = _100._m0;
    vec3 _156 = _152;
    mat4 _222 = _153;
    mat3 _231 = mat3(vec3(cross(_222[1].xyz, _222[2].xyz)), vec3(cross(_222[2].xyz, _222[0].xyz)), vec3(cross(_222[0].xyz, _222[1].xyz)));
    vec3 _223 = normalize(_231 * _156);
    _151 = _223;
    _160 = vec4(1.0, 1.0, 1.0, _163.w);
    _160.z = 1.0;
    _173 = (_175 + _100._m3.xy) + (_100._m4.xy * _111._m20);
    _160.w = 1.0;
    vec3 _193 = _130;
    if (_100._m2 != 0.0)
    {
        _193.y = _111._m96 - _193.y;
    }
    vec4 _215 = vec4(_193, 1.0);
    vec4 _216 = _111._m8 * _215;
    gl_Position = _216;
    _86 = fract(floor(4.0 * _89) / 4.0);
    float _267 = (((_96 * _100._m5) * _111._m18) * _118._m0.y) / gl_Position.w;
    float _268 = _267;
    gl_PointSize = _268;
}

