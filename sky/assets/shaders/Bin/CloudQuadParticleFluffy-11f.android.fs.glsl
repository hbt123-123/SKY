#version 450

layout(set = 1, binding = 1, std140) uniform _63_65
{
    vec4 _m0;
    vec2 _m1;
} _65;

layout(set = 1, binding = 2, std140) uniform _78_80
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
} _80;

layout(set = 1, binding = 3) uniform sampler2D _88;
layout(set = 1, binding = 0) uniform mediump sampler2D _147;

layout(location = 4) in vec4 _127;
layout(location = 2) in vec4 _141;
layout(location = 0) in vec4 _149;
layout(location = 1) in vec2 _162;
layout(location = 0) out vec4 _187;
layout(location = 1) out vec4 _199;

void main()
{
    vec4 _124 = vec4(0.0, 0.0, 0.0, 1.0);
    float _126 = _127.x;
    float _130 = _127.y;
    float _134 = _127.z;
    float _138 = _127.w;
    _124 = _141;
    _124 *= _138;
    float _146 = texture(_147, _149.xy).w;
    if (_126 > 0.0)
    {
        float _159 = texture(_147, _162).w;
        _146 = mix(_146, _159, _126);
    }
    _124.w *= _146;
    float _175 = _146;
    float _177 = _130;
    float _179 = _134;
    vec2 _235 = gl_FragCoord.xy * _65._m0.zw;
    float _237 = max(textureLod(_88, _235, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _275 = 1.0 / _237;
    float _236 = _80._m24 * _275;
    float _238 = 1.0 / gl_FragCoord.w;
    _238 -= (_175 * _177);
    float _239 = _236 - _238;
    float _240 = _239 * _179;
    float _279 = clamp(_240, 0.0, 1.0);
    _239 = _279;
    float _241 = smoothstep(0.0, 1.0, _239);
    _124.w *= _241;
    _187 = vec4(_124.xyz * _124.w, _124.w);
    float _204 = 1.0 / gl_FragCoord.w;
    float _205 = 256.0;
    float _283 = log(_204 * 20.0) * (_205 * 0.079292468726634979248046875);
    float _293 = max(_283, 0.0);
    float _284 = _293;
    _199 = vec4(_284 * _124.w, _124.w * 1000.0, 0.0, _124.w);
}

