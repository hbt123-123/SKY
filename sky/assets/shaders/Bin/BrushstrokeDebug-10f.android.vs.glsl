#version 450

invariant gl_Position;

struct _64
{
    vec3 _m0;
    vec3 _m1;
    float _m2;
};

struct _381
{
    float _m0[3];
    float _m1[3];
    uint _m2;
    uint _m3[3];
    uint _m4;
    uint _m5;
    uint _m6;
    uint _m7;
};

struct _387
{
    float _m0[3];
    float _m1[3];
    uint _m2;
    uint _m3[3];
    uint _m4;
    uint _m5;
    uint _m6;
    uint _m7;
};

layout(set = 0, binding = 2, std140) uniform _255_257
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
} _257;

layout(set = 0, binding = 4, std430) restrict readonly buffer _389_391
{
    _387 _m0[];
} _391;

layout(set = 0, binding = 0, std140) uniform _532_534
{
    mat4 _m0;
    float _m1;
    uint _m2;
    uint _m3;
    uint _m4;
} _534;

layout(set = 0, binding = 3) uniform samplerCube _244;

layout(location = 0) in vec2 _619;
layout(location = 0) out vec3 _686;
layout(location = 1) out vec3 _688;
layout(location = 2) out vec3 _702;
layout(location = 3) flat out vec4 _708;
layout(location = 4) out vec3 _720;
layout(location = 5) out vec3 _735;
layout(location = 6) out vec2 _767;
layout(location = 7) flat out vec2 _788;
layout(location = 8) flat out vec4 _816;

void main()
{
    do
    {
        _381 _383;
        _383._m0[0] = _391._m0[gl_InstanceIndex]._m0[0];
        _383._m0[1] = _391._m0[gl_InstanceIndex]._m0[1];
        _383._m0[2] = _391._m0[gl_InstanceIndex]._m0[2];
        _383._m1[0] = _391._m0[gl_InstanceIndex]._m1[0];
        _383._m1[1] = _391._m0[gl_InstanceIndex]._m1[1];
        _383._m1[2] = _391._m0[gl_InstanceIndex]._m1[2];
        _383._m2 = _391._m0[gl_InstanceIndex]._m2;
        _383._m3[0] = _391._m0[gl_InstanceIndex]._m3[0];
        _383._m3[1] = _391._m0[gl_InstanceIndex]._m3[1];
        _383._m3[2] = _391._m0[gl_InstanceIndex]._m3[2];
        _383._m4 = _391._m0[gl_InstanceIndex]._m4;
        _383._m5 = _391._m0[gl_InstanceIndex]._m5;
        _383._m6 = _391._m0[gl_InstanceIndex]._m6;
        _383._m7 = _391._m0[gl_InstanceIndex]._m7;
        uint _439 = _383._m4;
        vec2 _848 = unpackHalf2x16(_439);
        vec2 _438 = _848;
        float _443 = _438.x;
        if (_443 < 0.0)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        float _460[3] = _383._m0;
        vec3 _852 = vec3(_460[0], _460[1], _460[2]);
        vec3 _459 = _852;
        float _465[3] = _383._m1;
        vec3 _861 = vec3(_465[0], _465[1], _465[2]);
        vec3 _464 = _861;
        uint _470 = _383._m2;
        vec2 _870 = unpackSnorm2x16(_470);
        vec2 _474 = _870;
        vec3 _874 = vec3(_474.x, _474.y, (1.0 - abs(_474.x)) - abs(_474.y));
        float _876 = -_874.z;
        float _914 = clamp(_876, 0.0, 1.0);
        float _875 = _914;
        vec3 _897 = _874;
        vec3 _905 = _874;
        vec2 _907 = _905.xy + ((vec2(1.0) - (step(vec2(0.0), _897.xy) * 2.0)) * _875);
        _874.x = _907.x;
        _874.y = _907.y;
        vec3 _877 = normalize(_874);
        vec3 _469 = _877;
        uint _477 = _383._m3[0];
        vec2 _918 = unpackHalf2x16(_477);
        vec2 _476 = _918;
        uint _482 = _383._m3[1];
        vec2 _922 = unpackHalf2x16(_482);
        vec2 _481 = _922;
        uint _487 = _383._m3[2];
        vec2 _926 = unpackHalf2x16(_487);
        vec2 _486 = _926;
        vec3 _491 = vec3(_476.x, _481.x, _486.x);
        vec3 _499 = vec3(_476.y, _481.y, _486.y);
        uint _508 = _383._m5;
        vec2 _930 = unpackHalf2x16(_508);
        vec2 _507 = _930;
        uint _518 = _383._m7;
        uint _938 = _518;
        vec4 _943 = vec4(float((_938 >> uint(0)) & 255u), float((_938 >> uint(8)) & 255u), float((_938 >> uint(16)) & 255u), float((_938 >> uint(24)) & 255u)) * 0.0039215688593685626983642578125;
        vec4 _939 = _943;
        vec4 _517 = _939;
        bool _523 = _438.y < 0.0;
        float _527 = abs(_438.y);
        _64 _531;
        _531._m0 = (_534._m0 * vec4(_459, 1.0)).xyz;
        _531._m1 = (_534._m0 * vec4(_491, 0.0)).xyz;
        _531._m2 = _507.x;
        _64 _559;
        _559._m0 = (_534._m0 * vec4(_464, 1.0)).xyz;
        _559._m1 = (_534._m0 * vec4(_499, 0.0)).xyz;
        _559._m2 = _507.y;
        mat4 _583 = _534._m0;
        vec3 _586 = _469;
        mat4 _963 = _583;
        mat3 _972 = mat3(vec3(cross(_963[1].xyz, _963[2].xyz)), vec3(cross(_963[2].xyz, _963[0].xyz)), vec3(cross(_963[0].xyz, _963[1].xyz)));
        vec3 _964 = normalize(_972 * _586);
        _469 = _964;
        float _589 = _534._m1 + _443;
        float _602;
        if ((_527 > 0.0) && (_534._m3 != 0u))
        {
            float _612 = (_257._m20 - _589) / _527;
            float _1008 = clamp(_612, 0.0, 1.0);
            _602 = _1008;
        }
        else
        {
            _602 = 1.0;
        }
        float _594 = _602;
        _64 _625 = _531;
        _64 _627 = _559;
        float _629 = _619.y;
        float _1012 = _629 * _629;
        float _1013 = _1012 * _629;
        float _1014 = ((2.0 * _1013) - (3.0 * _1012)) + 1.0;
        float _1015 = (_1013 - (2.0 * _1012)) + _629;
        float _1016 = ((-2.0) * _1013) + (3.0 * _1012);
        float _1017 = _1013 - _1012;
        _64 _1018;
        _1018._m0 = (((_625._m0 * _1014) + (_625._m1 * _1015)) + (_627._m0 * _1016)) + (_627._m1 * _1017);
        float _1019 = (6.0 * _1012) - (6.0 * _629);
        float _1020 = ((3.0 * _1012) - (4.0 * _629)) + 1.0;
        float _1021 = ((-6.0) * _1012) + (6.0 * _629);
        float _1022 = (3.0 * _1012) - (2.0 * _629);
        _1018._m1 = (((_625._m0 * _1019) + (_625._m1 * _1020)) + (_627._m0 * _1021)) + (_627._m1 * _1022);
        _1018._m2 = mix(_625._m2, _627._m2, _629);
        _64 _1023 = _1018;
        _64 _624 = _1023;
        vec3 _633 = normalize(cross(_469, _624._m1));
        float _644 = float(gl_InstanceIndex) + 0.5;
        float _1120 = fract(_644 * 0.103100001811981201171875);
        _1120 += ((_1120 * (_1120 + 19.1900005340576171875)) * 3.0);
        float _1121 = fract((_1120 + _1120) * _1120);
        float _639 = _1121;
        vec3 _646 = ((_469 * _619.y) * 0.0030000000260770320892333984375) * (_639 + 0.5);
        vec3 _656 = (_624._m0 + ((_633 * _619.x) * _624._m2)) + _646;
        if (_534._m4 != 0u)
        {
            _656.y = _257._m96 - _656.y;
            _469.y = -_469.y;
        }
        _686 = _656;
        _688 = vec3(_469);
        vec3 _694 = normalize(_257._m17 - _656);
        _702 = vec3(_694);
        _708 = vec4(_517);
        vec3 _715 = reflect(-_694, _469);
        vec3 _723 = _469;
        float _725 = 5.0;
        vec4 _1139 = textureLod(_244, _723, _725);
        vec3 _1140 = (_1139.xyz * _1139.xyz) * (_257._m43 / _1139.w);
        _720 = vec3(vec3(1.0) / max(_1140, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _736 = _715;
        float _738 = 5.0;
        vec4 _1157 = textureLod(_244, _736, _738);
        vec3 _1158 = (_1157.xyz * _1157.xyz) * (_257._m43 / _1157.w);
        _735 = vec3(vec3(1.0) / max(_1158, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _746 = _559._m0 - _531._m0;
        float _752 = dot(_624._m0 - _531._m0, _746) / max(dot(_746, _746), 9.9999999747524270787835121154785e-07);
        float _772 = _752;
        float _1175 = clamp(_772, 0.0, 1.0);
        _767 = vec2((_619.x * 0.5) + 0.5, _1175);
        if ((_534._m2 != 0u) != _523)
        {
            _767.y = 1.0 - _767.y;
        }
        _788 = vec2(_639, _594);
        vec3 _792 = (_257._m6 * vec4(_686, 1.0)).xyz;
        int _808;
        if (gl_VertexIndex < 12)
        {
            _808 = 0;
        }
        else
        {
            _808 = (gl_VertexIndex < 20) ? 1 : 2;
        }
        int _803 = _808;
        _816.x = float(_803);
        vec4 _826 = vec4(_792, 1.0);
        vec4 _827 = _257._m7 * _826;
        gl_Position = _827;
        break;
    } while(false);
}

