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
    float _593 = dot(_513, _397) / dot(_397, _397);
    float _595 = _593;
    vec2 _596 = _408;
    vec2 _597 = _412._m5;
    float _692 = _595;
    float _863 = clamp(_692, 0.0, 1.0);
    _595 = _863;
    uint _693 = uint(_596.x);
    uint _694 = uint(_596.y);
    uint _695[4];
    _695[1] = uint(_595 * float(_694 - 1u));
    uint _696;
    if (_695[1] == (_694 - 1u))
    {
        _696 = _694 - 2u;
    }
    else
    {
        _696 = _695[1];
    }
    _695[1] = _696;
    _695[2] = _695[1] + 1u;
    uint _697;
    if (_695[1] != 0u)
    {
        _697 = _695[1] - 1u;
    }
    else
    {
        _697 = _695[1];
    }
    _695[0] = _697;
    uint _698;
    if (_695[2] != (_694 - 1u))
    {
        _698 = _695[2] + 1u;
    }
    else
    {
        _698 = _695[2];
    }
    _695[3] = _698;
    _34 _699;
    _699._m8 = (_595 * float(_694 - 1u)) - float(_695[1]);
    ivec2 _701[4];
    for (uint _700 = 0u; _700 < 4u; _700++)
    {
        _701[_700] = ivec2(int((_693 + _695[_700]) % uint(_597.x)), int(float(_693 + _695[_700]) / _597.x));
    }
    _699._m0 = texelFetch(_405, _701[0], 0).xyz;
    _699._m1 = texelFetch(_405, _701[1], 0).xyz;
    _699._m2 = texelFetch(_405, _701[2], 0).xyz;
    _699._m3 = texelFetch(_405, _701[3], 0).xyz;
    vec4 _702 = texelFetch(_406, _701[1], 0);
    _699._m4 = (_702.xyz * 2.0) - vec3(1.0);
    _699._m6 = _702.w;
    _702 = texelFetch(_406, _701[2], 0);
    _699._m5 = (_702.xyz * 2.0) - vec3(1.0);
    _699._m7 = _702.w;
    _34 _703 = _699;
    _34 _594 = _703;
    _34 _599 = _594;
    float _868 = _599._m8;
    vec3 _869 = _599._m0;
    vec3 _870 = _599._m1;
    vec3 _871 = _599._m2;
    vec3 _872 = _599._m3;
    vec3 _924 = ((_870 * 2.0) + ((((-_869) + _871) + ((((((_869 * 2.0) - (_870 * 5.0)) + (_871 * 4.0)) - _872) + (((((-_869) + (_870 * 3.0)) - (_871 * 3.0)) + _872) * _868)) * _868)) * _868)) * 0.5;
    _44 _867;
    _867._m0 = _924;
    float _873 = _599._m8;
    vec3 _874 = _599._m0;
    vec3 _875 = _599._m1;
    vec3 _876 = _599._m2;
    vec3 _877 = _599._m3;
    vec3 _962 = (((-_874) + _876) + (((((((_874 * 2.0) - (_875 * 5.0)) + (_876 * 4.0)) - _877) * 2.0) + ((((((-_874) + (_875 * 3.0)) - (_876 * 3.0)) + _877) * _873) * 3.0)) * _873)) * 0.5;
    _867._m1 = normalize(_962);
    _867._m2 = normalize(mix(_599._m4, _599._m5, vec3(_599._m8)));
    _867._m3 = mix(_599._m6, _599._m7, _599._m8);
    _44 _878 = _867;
    _44 _598 = _878;
    mat3 _600 = mat3(vec3(normalize(cross(_429, _397))), vec3(_429), vec3(normalize(_397)));
    _513 -= (_397 * dot(_397, _513));
    _513 *= _600;
    _515 *= _600;
    mat3 _601 = mat3(vec3(normalize(cross(_598._m2, _598._m1))), vec3(_598._m2), vec3(_598._m1));
    _601[1] = normalize(cross(_601[2], _601[0]));
    _513 = _598._m0 + ((_601 * _513) * _598._m3);
    _515 = _601 * _515;
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

