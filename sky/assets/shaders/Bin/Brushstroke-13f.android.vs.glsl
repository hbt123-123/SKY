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

struct _71
{
    vec3 _m0;
    vec3 _m1;
    float _m2;
};

struct _394
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

struct _400
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

layout(set = 0, binding = 2, std140) uniform _268_270
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
} _270;

layout(set = 0, binding = 4, std430) restrict readonly buffer _402_404
{
    _400 _m0[];
} _404;

layout(set = 0, binding = 0, std140) uniform _522_524
{
    mat4 _m0;
    float _m1;
    uint _m2;
    uint _m3;
    uint _m4;
} _524;

layout(set = 0, binding = 3) uniform samplerCube _257;

layout(location = 0) in vec2 _611;
layout(location = 0) out vec3 _678;
layout(location = 1) out vec3 _680;
layout(location = 2) out vec3 _694;
layout(location = 3) flat out vec4 _700;
layout(location = 4) out vec3 _712;
layout(location = 5) out vec3 _727;
layout(location = 6) out vec2 _759;
layout(location = 7) flat out vec2 _780;

void main()
{
    do
    {
        _394 _411;
        _411._m0[0] = _404._m0[gl_InstanceIndex]._m0[0];
        _411._m0[1] = _404._m0[gl_InstanceIndex]._m0[1];
        _411._m0[2] = _404._m0[gl_InstanceIndex]._m0[2];
        _411._m1[0] = _404._m0[gl_InstanceIndex]._m1[0];
        _411._m1[1] = _404._m0[gl_InstanceIndex]._m1[1];
        _411._m1[2] = _404._m0[gl_InstanceIndex]._m1[2];
        _411._m2 = _404._m0[gl_InstanceIndex]._m2;
        _411._m3[0] = _404._m0[gl_InstanceIndex]._m3[0];
        _411._m3[1] = _404._m0[gl_InstanceIndex]._m3[1];
        _411._m3[2] = _404._m0[gl_InstanceIndex]._m3[2];
        _411._m4 = _404._m0[gl_InstanceIndex]._m4;
        _411._m5 = _404._m0[gl_InstanceIndex]._m5;
        _411._m6 = _404._m0[gl_InstanceIndex]._m6;
        _411._m7 = _404._m0[gl_InstanceIndex]._m7;
        _394 _396 = _411;
        uint _415 = _396._m4;
        vec2 _823 = unpackHalf2x16(_415);
        f16vec2 _829 = f16vec2(_823);
        f16vec2 _824 = _829;
        f16vec2 _413 = _824;
        float _419 = float(_413.x);
        if (_419 < 0.0)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        float _438[3] = _396._m0;
        vec3 _833 = vec3(_438[0], _438[1], _438[2]);
        vec3 _437 = _833;
        float _443[3] = _396._m1;
        vec3 _842 = vec3(_443[0], _443[1], _443[2]);
        vec3 _442 = _842;
        uint _448 = _396._m2;
        vec2 _851 = unpackSnorm2x16(_448);
        vec2 _452 = _851;
        vec3 _855 = vec3(_452.x, _452.y, (1.0 - abs(_452.x)) - abs(_452.y));
        float _857 = -_855.z;
        float _895 = clamp(_857, 0.0, 1.0);
        float _856 = _895;
        vec3 _878 = _855;
        vec3 _886 = _855;
        vec2 _888 = _886.xy + ((vec2(1.0) - (step(vec2(0.0), _878.xy) * 2.0)) * _856);
        _855.x = _888.x;
        _855.y = _888.y;
        vec3 _858 = normalize(_855);
        vec3 _447 = _858;
        uint _456 = _396._m3[0];
        vec2 _899 = unpackHalf2x16(_456);
        f16vec2 _905 = f16vec2(_899);
        f16vec2 _900 = _905;
        f16vec2 _454 = _900;
        uint _461 = _396._m3[1];
        vec2 _909 = unpackHalf2x16(_461);
        f16vec2 _915 = f16vec2(_909);
        f16vec2 _910 = _915;
        f16vec2 _460 = _910;
        uint _466 = _396._m3[2];
        vec2 _919 = unpackHalf2x16(_466);
        f16vec2 _925 = f16vec2(_919);
        f16vec2 _920 = _925;
        f16vec2 _465 = _920;
        vec3 _470 = vec3(float(_454.x), float(_460.x), float(_465.x));
        vec3 _481 = vec3(float(_454.y), float(_460.y), float(_465.y));
        uint _494 = _396._m5;
        vec2 _929 = unpackHalf2x16(_494);
        f16vec2 _935 = f16vec2(_929);
        f16vec2 _930 = _935;
        f16vec2 _492 = _930;
        uint _506 = _396._m7;
        uint _949 = _506;
        vec4 _954 = vec4(float((_949 >> uint(0)) & 255u), float((_949 >> uint(8)) & 255u), float((_949 >> uint(16)) & 255u), float((_949 >> uint(24)) & 255u)) * 0.0039215688593685626983642578125;
        vec4 _950 = _954;
        vec4 _504 = _950;
        bool _511 = float(_413.y) < 0.0;
        float _516 = abs(float(_413.y));
        _71 _521;
        _521._m0 = (_524._m0 * vec4(_437, 1.0)).xyz;
        _521._m1 = (_524._m0 * vec4(_470, 0.0)).xyz;
        _521._m2 = float(_492.x);
        _71 _550;
        _550._m0 = (_524._m0 * vec4(_442, 1.0)).xyz;
        _550._m1 = (_524._m0 * vec4(_481, 0.0)).xyz;
        _550._m2 = float(_492.y);
        mat4 _575 = _524._m0;
        vec3 _578 = _447;
        mat4 _974 = _575;
        mat3 _983 = mat3(vec3(cross(_974[1].xyz, _974[2].xyz)), vec3(cross(_974[2].xyz, _974[0].xyz)), vec3(cross(_974[0].xyz, _974[1].xyz)));
        vec3 _975 = normalize(_983 * _578);
        _447 = _975;
        float _581 = _524._m1 + _419;
        float _594;
        if ((_516 > 0.0) && (_524._m3 != 0u))
        {
            float _604 = (_270._m20 - _581) / _516;
            float _1019 = clamp(_604, 0.0, 1.0);
            _594 = _1019;
        }
        else
        {
            _594 = 1.0;
        }
        float _586 = _594;
        _71 _617 = _521;
        _71 _619 = _550;
        float _621 = _611.y;
        float _1023 = _621 * _621;
        float _1024 = _1023 * _621;
        float _1025 = ((2.0 * _1024) - (3.0 * _1023)) + 1.0;
        float _1026 = (_1024 - (2.0 * _1023)) + _621;
        float _1027 = ((-2.0) * _1024) + (3.0 * _1023);
        float _1028 = _1024 - _1023;
        _71 _1029;
        _1029._m0 = (((_617._m0 * _1025) + (_617._m1 * _1026)) + (_619._m0 * _1027)) + (_619._m1 * _1028);
        float _1030 = (6.0 * _1023) - (6.0 * _621);
        float _1031 = ((3.0 * _1023) - (4.0 * _621)) + 1.0;
        float _1032 = ((-6.0) * _1023) + (6.0 * _621);
        float _1033 = (3.0 * _1023) - (2.0 * _621);
        _1029._m1 = (((_617._m0 * _1030) + (_617._m1 * _1031)) + (_619._m0 * _1032)) + (_619._m1 * _1033);
        _1029._m2 = mix(_617._m2, _619._m2, _621);
        _71 _1034 = _1029;
        _71 _616 = _1034;
        vec3 _625 = normalize(cross(_447, _616._m1));
        float _636 = float(gl_InstanceIndex) + 0.5;
        float _1131 = fract(_636 * 0.103100001811981201171875);
        _1131 += ((_1131 * (_1131 + 19.1900005340576171875)) * 3.0);
        float _1132 = fract((_1131 + _1131) * _1131);
        float _631 = _1132;
        vec3 _638 = ((_447 * _611.y) * 0.0030000000260770320892333984375) * (_631 + 0.5);
        vec3 _648 = (_616._m0 + ((_625 * _611.x) * _616._m2)) + _638;
        if (_524._m4 != 0u)
        {
            _648.y = _270._m96 - _648.y;
            _447.y = -_447.y;
        }
        _678 = _648;
        _680 = vec3(_447);
        vec3 _686 = normalize(_270._m17 - _648);
        _694 = vec3(_686);
        _700 = vec4(_504);
        vec3 _707 = reflect(-_686, _447);
        vec3 _715 = _447;
        float _717 = 5.0;
        vec4 _1150 = textureLod(_257, _715, _717);
        vec3 _1151 = (_1150.xyz * _1150.xyz) * (_270._m43 / _1150.w);
        _712 = vec3(vec3(1.0) / max(_1151, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _728 = _707;
        float _730 = 5.0;
        vec4 _1168 = textureLod(_257, _728, _730);
        vec3 _1169 = (_1168.xyz * _1168.xyz) * (_270._m43 / _1168.w);
        _727 = vec3(vec3(1.0) / max(_1169, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _738 = _550._m0 - _521._m0;
        float _744 = dot(_616._m0 - _521._m0, _738) / max(dot(_738, _738), 9.9999999747524270787835121154785e-07);
        float _764 = _744;
        float _1186 = clamp(_764, 0.0, 1.0);
        _759 = vec2((_611.x * 0.5) + 0.5, _1186);
        if ((_524._m2 != 0u) != _511)
        {
            _759.y = 1.0 - _759.y;
        }
        _780 = vec2(_631, _586);
        vec3 _784 = (_270._m6 * vec4(_678, 1.0)).xyz;
        vec4 _800 = vec4(_784, 1.0);
        vec4 _801 = _270._m7 * _800;
        gl_Position = _801;
        break;
    } while(false);
}

