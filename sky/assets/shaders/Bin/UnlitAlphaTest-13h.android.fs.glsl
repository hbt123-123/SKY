#version 450

layout(set = 1, binding = 0, std140) uniform _44_46
{
    vec4 _m0;
    float _m1;
} _46;

layout(set = 1, binding = 2, std140) uniform _77_79
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
} _79;

layout(set = 1, binding = 3) uniform mediump sampler2D _22;

layout(location = 3) in vec2 _11;
layout(location = 0) in vec4 _17;
layout(location = 1) in vec3 _114;
layout(location = 2) in vec3 _122;
layout(location = 0) out vec4 _139;

void main()
{
    do
    {
        vec2 _9 = _11;
        vec4 _15 = _17 * texture(_22, _9);
        vec4 _27 = _15;
        vec3 _31 = vec3(0.0);
        float _35 = dot(_15.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
        bool _55 = _46._m0.x > 9.9999999747524270787835121154785e-07;
        bool _64;
        if (_55)
        {
            _64 = _35 > (1.0 - _46._m0.x);
        }
        else
        {
            _64 = _55;
        }
        if (_64)
        {
            _31 = ((_15.xyz * (_46._m0.y + (_46._m1 * _79._m23))) * ((_35 - 1.0) + _46._m0.x)) / vec3(max(_46._m0.x, 9.9999999747524270787835121154785e-07));
        }
        _31 *= (1.0 + _46._m0.z);
        vec4 _104 = _27;
        vec3 _106 = _104.xyz + _31;
        _27.x = _106.x;
        _27.y = _106.y;
        _27.z = _106.z;
        bool _119 = _114.x == (-1000000000.0);
        bool _126;
        if (_119)
        {
            _126 = _122.x == (-1000000000.0);
        }
        else
        {
            _126 = _119;
        }
        if (_126)
        {
            break;
        }
        if (_27.w < 0.5)
        {
            discard;
        }
        _139 = vec4(_27.xyz, 0.0);
        break;
    } while(false);
}

