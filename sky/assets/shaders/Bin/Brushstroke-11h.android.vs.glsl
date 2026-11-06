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

layout(set = 0, binding = 0, std140) uniform _556_558
{
    mat4 _m0;
    float _m1;
    uint _m2;
    uint _m3;
    uint _m4;
} _558;

layout(set = 0, binding = 3) uniform samplerCube _257;

layout(location = 0) in vec2 _645;
layout(location = 0) out vec3 _712;
layout(location = 1) out f16vec3 _716;
layout(location = 2) out f16vec3 _727;
layout(location = 3) flat out f16vec4 _732;
layout(location = 4) out f16vec3 _740;
layout(location = 5) out f16vec3 _752;
layout(location = 6) out vec2 _781;
layout(location = 7) flat out vec2 _802;

void main()
{
    do
    {
        _394 _396;
        _396._m0[0] = _404._m0[gl_InstanceIndex]._m0[0];
        _396._m0[1] = _404._m0[gl_InstanceIndex]._m0[1];
        _396._m0[2] = _404._m0[gl_InstanceIndex]._m0[2];
        _396._m1[0] = _404._m0[gl_InstanceIndex]._m1[0];
        _396._m1[1] = _404._m0[gl_InstanceIndex]._m1[1];
        _396._m1[2] = _404._m0[gl_InstanceIndex]._m1[2];
        _396._m2 = _404._m0[gl_InstanceIndex]._m2;
        _396._m3[0] = _404._m0[gl_InstanceIndex]._m3[0];
        _396._m3[1] = _404._m0[gl_InstanceIndex]._m3[1];
        _396._m3[2] = _404._m0[gl_InstanceIndex]._m3[2];
        _396._m4 = _404._m0[gl_InstanceIndex]._m4;
        _396._m5 = _404._m0[gl_InstanceIndex]._m5;
        _396._m6 = _404._m0[gl_InstanceIndex]._m6;
        _396._m7 = _404._m0[gl_InstanceIndex]._m7;
        uint _453 = _396._m4;
        vec2 _845 = unpackHalf2x16(_453);
        f16vec2 _851 = f16vec2(_845);
        f16vec2 _846 = _851;
        f16vec2 _452 = _846;
        float _457 = float(_452.x);
        if (_457 < 0.0)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        float _476[3] = _396._m0;
        vec3 _855 = vec3(_476[0], _476[1], _476[2]);
        vec3 _475 = _855;
        float _481[3] = _396._m1;
        vec3 _864 = vec3(_481[0], _481[1], _481[2]);
        vec3 _480 = _864;
        uint _486 = _396._m2;
        vec2 _873 = unpackSnorm2x16(_486);
        vec2 _490 = _873;
        vec3 _877 = vec3(_490.x, _490.y, (1.0 - abs(_490.x)) - abs(_490.y));
        float _879 = -_877.z;
        float _917 = clamp(_879, 0.0, 1.0);
        float _878 = _917;
        vec3 _900 = _877;
        vec3 _908 = _877;
        vec2 _910 = _908.xy + ((vec2(1.0) - (step(vec2(0.0), _900.xy) * 2.0)) * _878);
        _877.x = _910.x;
        _877.y = _910.y;
        vec3 _880 = normalize(_877);
        vec3 _485 = _880;
        uint _493 = _396._m3[0];
        vec2 _921 = unpackHalf2x16(_493);
        f16vec2 _927 = f16vec2(_921);
        f16vec2 _922 = _927;
        f16vec2 _492 = _922;
        uint _498 = _396._m3[1];
        vec2 _931 = unpackHalf2x16(_498);
        f16vec2 _937 = f16vec2(_931);
        f16vec2 _932 = _937;
        f16vec2 _497 = _932;
        uint _503 = _396._m3[2];
        vec2 _941 = unpackHalf2x16(_503);
        f16vec2 _947 = f16vec2(_941);
        f16vec2 _942 = _947;
        f16vec2 _502 = _942;
        vec3 _507 = vec3(float(_492.x), float(_497.x), float(_502.x));
        vec3 _518 = vec3(float(_492.y), float(_497.y), float(_502.y));
        uint _530 = _396._m5;
        vec2 _951 = unpackHalf2x16(_530);
        f16vec2 _957 = f16vec2(_951);
        f16vec2 _952 = _957;
        f16vec2 _529 = _952;
        uint _540 = _396._m7;
        uint _971 = _540;
        vec4 _976 = vec4(float((_971 >> uint(0)) & 255u), float((_971 >> uint(8)) & 255u), float((_971 >> uint(16)) & 255u), float((_971 >> uint(24)) & 255u)) * 0.0039215688593685626983642578125;
        vec4 _972 = _976;
        vec4 _539 = _972;
        bool _545 = float(_452.y) < 0.0;
        float _550 = abs(float(_452.y));
        _71 _555;
        _555._m0 = (_558._m0 * vec4(_475, 1.0)).xyz;
        _555._m1 = (_558._m0 * vec4(_507, 0.0)).xyz;
        _555._m2 = float(_529.x);
        _71 _584;
        _584._m0 = (_558._m0 * vec4(_480, 1.0)).xyz;
        _584._m1 = (_558._m0 * vec4(_518, 0.0)).xyz;
        _584._m2 = float(_529.y);
        mat4 _609 = _558._m0;
        vec3 _612 = _485;
        mat4 _996 = _609;
        mat3 _1005 = mat3(vec3(cross(_996[1].xyz, _996[2].xyz)), vec3(cross(_996[2].xyz, _996[0].xyz)), vec3(cross(_996[0].xyz, _996[1].xyz)));
        vec3 _997 = normalize(_1005 * _612);
        _485 = _997;
        float _615 = _558._m1 + _457;
        float _628;
        if ((_550 > 0.0) && (_558._m3 != 0u))
        {
            float _638 = (_270._m20 - _615) / _550;
            float _1041 = clamp(_638, 0.0, 1.0);
            _628 = _1041;
        }
        else
        {
            _628 = 1.0;
        }
        float _620 = _628;
        _71 _651 = _555;
        _71 _653 = _584;
        float _655 = _645.y;
        float _1045 = _655 * _655;
        float _1046 = _1045 * _655;
        float _1047 = ((2.0 * _1046) - (3.0 * _1045)) + 1.0;
        float _1048 = (_1046 - (2.0 * _1045)) + _655;
        float _1049 = ((-2.0) * _1046) + (3.0 * _1045);
        float _1050 = _1046 - _1045;
        _71 _1051;
        _1051._m0 = (((_651._m0 * _1047) + (_651._m1 * _1048)) + (_653._m0 * _1049)) + (_653._m1 * _1050);
        float _1052 = (6.0 * _1045) - (6.0 * _655);
        float _1053 = ((3.0 * _1045) - (4.0 * _655)) + 1.0;
        float _1054 = ((-6.0) * _1045) + (6.0 * _655);
        float _1055 = (3.0 * _1045) - (2.0 * _655);
        _1051._m1 = (((_651._m0 * _1052) + (_651._m1 * _1053)) + (_653._m0 * _1054)) + (_653._m1 * _1055);
        _1051._m2 = mix(_651._m2, _653._m2, _655);
        _71 _1056 = _1051;
        _71 _650 = _1056;
        vec3 _659 = normalize(cross(_485, _650._m1));
        float _670 = float(gl_InstanceIndex) + 0.5;
        float _1153 = fract(_670 * 0.103100001811981201171875);
        _1153 += ((_1153 * (_1153 + 19.1900005340576171875)) * 3.0);
        float _1154 = fract((_1153 + _1153) * _1153);
        float _665 = _1154;
        vec3 _672 = ((_485 * _645.y) * 0.0030000000260770320892333984375) * (_665 + 0.5);
        vec3 _682 = (_650._m0 + ((_659 * _645.x) * _650._m2)) + _672;
        if (_558._m4 != 0u)
        {
            _682.y = _270._m96 - _682.y;
            _485.y = -_485.y;
        }
        _712 = _682;
        _716 = f16vec3(_485);
        vec3 _719 = normalize(_270._m17 - _682);
        _727 = f16vec3(_719);
        _732 = f16vec4(_539);
        vec3 _735 = reflect(-_719, _485);
        vec3 _743 = _485;
        float _745 = 5.0;
        vec4 _1172 = textureLod(_257, _743, _745);
        vec3 _1173 = (_1172.xyz * _1172.xyz) * (_270._m43 / _1172.w);
        _740 = f16vec3(vec3(1.0) / max(_1173, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _753 = _735;
        float _755 = 5.0;
        vec4 _1190 = textureLod(_257, _753, _755);
        vec3 _1191 = (_1190.xyz * _1190.xyz) * (_270._m43 / _1190.w);
        _752 = f16vec3(vec3(1.0) / max(_1191, vec3(9.9999997473787516355514526367188e-05)));
        vec3 _760 = _584._m0 - _555._m0;
        float _766 = dot(_650._m0 - _555._m0, _760) / max(dot(_760, _760), 9.9999999747524270787835121154785e-07);
        float _786 = _766;
        float _1208 = clamp(_786, 0.0, 1.0);
        _781 = vec2((_645.x * 0.5) + 0.5, _1208);
        if ((_558._m2 != 0u) != _545)
        {
            _781.y = 1.0 - _781.y;
        }
        _802 = vec2(_665, _620);
        vec3 _806 = (_270._m6 * vec4(_712, 1.0)).xyz;
        vec4 _822 = vec4(_806, 1.0);
        vec4 _823 = _270._m7 * _822;
        gl_Position = _823;
        break;
    } while(false);
}

