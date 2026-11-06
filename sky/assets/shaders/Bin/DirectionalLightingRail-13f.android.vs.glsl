#version 450

invariant gl_Position;

struct _34
{
    vec3 _m0;
    vec3 _m1;
    vec3 _m2;
    vec3 _m3;
    vec3 _m4;
    vec3 _m5;
    float _m6;
    float _m7;
    float _m8;
};

struct _44
{
    vec3 _m0;
    vec3 _m1;
    vec3 _m2;
    float _m3;
};

layout(set = 0, binding = 0, std140) uniform _410_412
{
    mat4 _m0;
    vec3 _m1;
    float _m2;
    vec4 _m3;
    vec4 _m4;
    vec2 _m5;
} _412;

layout(set = 0, binding = 2, std140) uniform _522_524
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
} _524;

layout(set = 0, binding = 3) uniform sampler2D _405;
layout(set = 0, binding = 4) uniform sampler2D _406;

layout(location = 5) in vec3 _397;
layout(location = 4) in vec2 _408;
layout(location = 6) in vec3 _429;
layout(location = 0) in vec3 _507;
layout(location = 1) out vec3 _510;
layout(location = 1) in vec3 _511;
layout(location = 2) out vec3 _520;
layout(location = 0) out vec4 _532;
layout(location = 2) in vec4 _534;
layout(location = 3) out vec2 _543;
layout(location = 3) in vec2 _544;

void main()
{
    vec3 _506 = _507;
    _510 = _511;
    vec3 _513 = _506;
    vec3 _515 = _510;
    float _595 = dot(_513, _397) / dot(_397, _397);
    float _597 = _595;
    vec2 _598 = _408;
    vec2 _599 = _412._m5;
    float _694 = _597;
    float _865 = clamp(_694, 0.0, 1.0);
    _597 = _865;
    uint _695 = uint(_598.x);
    uint _696 = uint(_598.y);
    uint _697[4];
    _697[1] = uint(_597 * float(_696 - 1u));
    uint _698;
    if (_697[1] == (_696 - 1u))
    {
        _698 = _696 - 2u;
    }
    else
    {
        _698 = _697[1];
    }
    _697[1] = _698;
    _697[2] = _697[1] + 1u;
    uint _699;
    if (_697[1] != 0u)
    {
        _699 = _697[1] - 1u;
    }
    else
    {
        _699 = _697[1];
    }
    _697[0] = _699;
    uint _700;
    if (_697[2] != (_696 - 1u))
    {
        _700 = _697[2] + 1u;
    }
    else
    {
        _700 = _697[2];
    }
    _697[3] = _700;
    _34 _701;
    _701._m8 = (_597 * float(_696 - 1u)) - float(_697[1]);
    ivec2 _703[4];
    for (uint _702 = 0u; _702 < 4u; _702++)
    {
        _703[_702] = ivec2(int((_695 + _697[_702]) % uint(_599.x)), int(float(_695 + _697[_702]) / _599.x));
    }
    _701._m0 = texelFetch(_405, _703[0], 0).xyz;
    _701._m1 = texelFetch(_405, _703[1], 0).xyz;
    _701._m2 = texelFetch(_405, _703[2], 0).xyz;
    _701._m3 = texelFetch(_405, _703[3], 0).xyz;
    vec4 _704 = texelFetch(_406, _703[1], 0);
    _701._m4 = (_704.xyz * 2.0) - vec3(1.0);
    _701._m6 = _704.w;
    _704 = texelFetch(_406, _703[2], 0);
    _701._m5 = (_704.xyz * 2.0) - vec3(1.0);
    _701._m7 = _704.w;
    _34 _705 = _701;
    _34 _596 = _705;
    _34 _601 = _596;
    float _870 = _601._m8;
    vec3 _871 = _601._m0;
    vec3 _872 = _601._m1;
    vec3 _873 = _601._m2;
    vec3 _874 = _601._m3;
    vec3 _926 = ((_872 * 2.0) + ((((-_871) + _873) + ((((((_871 * 2.0) - (_872 * 5.0)) + (_873 * 4.0)) - _874) + (((((-_871) + (_872 * 3.0)) - (_873 * 3.0)) + _874) * _870)) * _870)) * _870)) * 0.5;
    _44 _869;
    _869._m0 = _926;
    float _875 = _601._m8;
    vec3 _876 = _601._m0;
    vec3 _877 = _601._m1;
    vec3 _878 = _601._m2;
    vec3 _879 = _601._m3;
    vec3 _964 = (((-_876) + _878) + (((((((_876 * 2.0) - (_877 * 5.0)) + (_878 * 4.0)) - _879) * 2.0) + ((((((-_876) + (_877 * 3.0)) - (_878 * 3.0)) + _879) * _875) * 3.0)) * _875)) * 0.5;
    _869._m1 = normalize(_964);
    _869._m2 = normalize(mix(_601._m4, _601._m5, vec3(_601._m8)));
    _869._m3 = mix(_601._m6, _601._m7, _601._m8);
    _44 _880 = _869;
    _44 _600 = _880;
    mat3 _602 = mat3(vec3(normalize(cross(_429, _397))), vec3(_429), vec3(normalize(_397)));
    _513 -= (_397 * dot(_397, _513));
    _513 *= _602;
    _515 *= _602;
    mat3 _603 = mat3(vec3(normalize(cross(_600._m2, _600._m1))), vec3(_600._m2), vec3(_600._m1));
    _603[1] = normalize(cross(_603[2], _603[0]));
    _513 = _600._m0 + ((_603 * _513) * _600._m3);
    _515 = _603 * _515;
    _506 = _513;
    _510 = _515;
    _520 = _524._m17 - _506;
    _532 = vec4(1.0, 1.0, 1.0, _534.w);
    _543 = (_544 + _412._m3.xy) + (_412._m4.xy * _524._m20);
    vec3 _560 = _506;
    if (_412._m2 != 0.0)
    {
        _560.y = _524._m96 - _560.y;
    }
    vec4 _584 = vec4(_560, 1.0);
    vec4 _585 = _524._m8 * _584;
    gl_Position = _585;
}

