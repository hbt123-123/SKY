#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _114_116
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
} _116;

layout(location = 0) out vec3 _20;
layout(location = 0) in vec3 _22;
layout(location = 1) out vec3 _24;
layout(location = 4) in vec4 _27;
layout(location = 2) out vec3 _30;
layout(location = 2) in vec3 _31;
layout(location = 3) out vec3 _33;
layout(location = 3) in vec3 _34;
layout(location = 4) out vec3 _36;
layout(location = 1) in vec3 _37;
layout(location = 5) in vec4 _42;
layout(location = 6) out vec2 _48;
layout(location = 7) out vec4 _61;
layout(location = 6) in vec4 _62;
layout(location = 8) out vec4 _64;
layout(location = 7) in vec4 _65;
layout(location = 9) out vec4 _71;
layout(location = 8) in vec4 _72;
layout(location = 10) out vec4 _74;
layout(location = 9) in vec4 _75;
layout(location = 11) out vec4 _80;
layout(location = 10) in vec4 _81;
layout(location = 12) out vec4 _84;
layout(location = 11) in vec4 _85;
layout(location = 5) out vec2 _259;

void main()
{
    _20 = _22;
    _24 = _27.xyz;
    _30 = _31;
    _33 = _34;
    _36 = _37;
    vec3 _40 = _42.xyz * 128.0;
    _48 = vec2(_27.w, floor(256.0 * _42.w));
    _61 = _62;
    _64 = _65 * vec4(0.5, 0.5, 0.5, 2.0);
    _71 = _72;
    _74 = _75 * vec4(8.0, 8.0, 8.0, 1.0);
    _80 = _81 * vec4(8.0, 8.0, 8.0, 1.0);
    _84 = _85 * vec4(8.0, 8.0, 8.0, 1.0);
    vec3 _88 = cross(_30, _33);
    mat3 _94 = mat3(vec3(_30), vec3(_33), vec3(_88));
    vec3 _111 = _116._m17 - _36;
    vec3 _124 = vec3(dot(_30, _111), dot(_33, _111), dot(_88, _111)) / _24;
    float _137 = length(_124);
    vec3 _140 = _124 / vec3(_137);
    vec3 _153;
    if (abs(_140.x) >= 0.57735002040863037109375)
    {
        _153 = vec3(_140.y, -_140.x, 0.0);
    }
    else
    {
        _153 = vec3(0.0, _140.z, -_140.y);
    }
    vec3 _145 = normalize(_153);
    vec3 _173 = cross(_140, _145);
    vec3 _177 = (_145 * _20.x) + (_173 * _20.y);
    vec3 _188 = _140;
    vec3 _190 = _177 * (1.14999997615814208984375 * sqrt((_137 - 1.0) / (_137 + 1.0)));
    _20 = _188 + _190;
    vec3 _204 = vec3(dot(_30, _40), dot(_33, _40), dot(_88, _40)) / _24;
    vec3 _217 = _204 - (_140 * dot(_140, _204));
    float _225 = length(_217);
    float _232;
    if (_225 > 0.001000000047497451305389404296875)
    {
        _232 = dot(_217, _177) / _225;
    }
    else
    {
        _232 = 0.0;
    }
    float _228 = _232;
    float _245;
    if (_225 > 0.001000000047497451305389404296875)
    {
        _245 = 1.14999997615814208984375 / _225;
    }
    else
    {
        _245 = 1.0;
    }
    float _242 = _245;
    float _255 = _225 - 0.25;
    float _303 = clamp(_255, 0.0, 1.0);
    _228 *= _303;
    _259.x = (_228 * 1.14999997615814208984375) * (0.5 + _242);
    _259.y = _242;
    vec3 _268 = _36 + (_94 * (_24 * _20));
    _268 += (_40 * (0.5 * _228));
    vec4 _294 = vec4(_268, 1.0);
    vec4 _295 = _116._m8 * _294;
    gl_Position = _295;
}

