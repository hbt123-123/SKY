#version 450

layout(set = 1, binding = 2, std140) uniform _97_99
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
} _99;

layout(set = 1, binding = 3) uniform mediump sampler2D _79;

layout(location = 1) in vec2 _83;
layout(location = 0) out vec4 _136;
layout(location = 1) out vec4 _148;

void main()
{
    float _75 = texture(_79, _83).x;
    vec4 _87 = vec4(0.0);
    if (_75 > 0.0)
    {
        float _108 = max(_75, 1.0000000116860974230803549289703e-07);
        float _193 = 1.0 / _108;
        float _94 = _99._m24 * _193;
        float _116 = log(1.0 + _94) / 10.00128173828125;
        float _197 = clamp(_116, 0.0, 1.0);
        vec3 _118 = vec3(_197);
        _87.x = _118.x;
        _87.y = _118.y;
        _87.z = _118.z;
        _87.w = 1.0 - (_87.z * _87.z);
        vec4 _132 = _87;
        float _204 = _132.w;
        vec4 _205 = _132;
        vec3 _207 = _205.xyz * _204;
        _132.x = _207.x;
        _132.y = _207.y;
        _132.z = _207.z;
        vec4 _201 = _132;
        _87 = _201;
    }
    _136 = vec4(_87.xyz * _87.w, _87.w);
    float _156 = 1.0 / gl_FragCoord.w;
    float _157 = 256.0;
    float _215 = log(_156 * 20.0) * (_157 * 0.079292468726634979248046875);
    float _225 = max(_215, 0.0);
    float _216 = _225;
    _148 = vec4(_216 * _87.w, _87.w * 1000.0, 0.0, _87.w);
}

