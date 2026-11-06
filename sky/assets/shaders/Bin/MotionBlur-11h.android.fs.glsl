#version 450

layout(set = 1, binding = 0, std140) uniform _26_28
{
    vec3 _m0;
    float _m1;
} _28;

layout(set = 1, binding = 2, std140) uniform _59_61
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
} _61;

layout(set = 1, binding = 1, std140) uniform _74_76
{
    vec4 _m0;
    vec2 _m1;
} _76;

layout(set = 1, binding = 4) uniform mediump sampler2D _46;
layout(set = 1, binding = 3) uniform mediump sampler2D _123;

layout(location = 0) in vec2 _21;
layout(location = 0) out vec4 _160;

void main()
{
    vec2 _19 = _21;
    vec2 _23 = (_19 - _28._m0.xy) * _28._m0.z;
    vec2 _42 = texture(_46, _19).xy;
    vec2 _52 = _42 + _23;
    _52 *= min(0.033333301544189453125 / _61._m19, _28._m1);
    float _72 = length(_52 * _76._m0.xy);
    float _83 = 1.0 + min(32.0, ceil(_72 * 0.5));
    if (_83 > 1.0)
    {
        _19 -= (_52 * 0.25);
        vec2 _101 = _52 * (0.5 / (_83 - 1.0));
        vec4 _108 = vec4(0.0);
        for (int _112 = 0; _112 < int(_83); _112++)
        {
            vec4 _122 = texture(_123, _19);
            _19 += _101;
            _108 += vec4(_122.xyz * _122.w, _122.w);
        }
        float _157 = (_108.w / _83) + (dot(_23, _23) * 10.0);
        float _190 = min(_157, 1.0);
        float _146 = _190;
        _160 = vec4(_108.xyz / vec3(max(9.9999997473787516355514526367188e-05, _108.w)), _146);
    }
    else
    {
        _160 = vec4(texture(_123, _19).xyz, 0.0);
    }
}

