#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _105_107
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
} _107;

layout(set = 0, binding = 0, std140) uniform _184_186
{
    mat4 _m0;
    float _m1;
} _186;

layout(set = 0, binding = 3) uniform samplerCube _92;

layout(location = 0) in vec3 _178;
layout(location = 2) in vec3 _181;
layout(location = 0) out vec3 _198;
layout(location = 1) out vec4 _234;
layout(location = 1) in vec4 _236;
layout(location = 5) out vec3 _238;
layout(location = 8) out vec3 _252;
layout(location = 9) out vec3 _260;
layout(location = 6) out vec4 _266;
layout(location = 3) in vec4 _267;
layout(location = 7) out vec4 _269;
layout(location = 4) in vec4 _270;
layout(location = 5) in vec4 _272;
layout(location = 6) in vec4 _273;
layout(location = 7) in vec4 _274;
layout(location = 2) out vec4 _275;
layout(location = 3) out vec4 _276;
layout(location = 4) out vec4 _277;

void main()
{
    vec3 _176 = _178;
    vec3 _180 = _181;
    vec3 _183 = (_186._m0 * vec4(_176, 1.0)).xyz;
    mat4 _199 = _186._m0;
    vec3 _202 = _180;
    mat4 _308 = _199;
    mat3 _317 = mat3(vec3(cross(_308[1].xyz, _308[2].xyz)), vec3(cross(_308[2].xyz, _308[0].xyz)), vec3(cross(_308[0].xyz, _308[1].xyz)));
    vec3 _309 = normalize(_317 * _202);
    _198 = _309;
    vec3 _205 = _183;
    if (_186._m1 != 0.0)
    {
        _205.y = _107._m96 - _205.y;
    }
    vec4 _230 = vec4(_205, 1.0);
    vec4 _231 = _107._m8 * _230;
    gl_Position = _231;
    _234 = _236;
    _238 = _107._m17 - _183;
    vec3 _244 = normalize(_238);
    vec3 _247 = reflect(-_244, _198);
    vec3 _255 = _198;
    float _257 = 5.0;
    vec4 _353 = textureLod(_92, _255, _257);
    vec3 _354 = (_353.xyz * _353.xyz) * (_107._m43 / _353.w);
    _252 = vec3(1.0) / _354;
    vec3 _261 = _247;
    float _263 = 5.0;
    vec4 _371 = textureLod(_92, _261, _263);
    vec3 _372 = (_371.xyz * _371.xyz) * (_107._m43 / _371.w);
    _260 = vec3(1.0) / _372;
    _266 = _267;
    _269 = _270;
    vec4 _278 = _272;
    vec4 _280 = _273;
    vec4 _282 = _274;
    vec4 _284 = vec4(((_278.xyz * _278.xyz) / vec3(_278.w)) * mix(_107._m51, _107._m47, vec3(_280.x)), _280.w * exp2((255.0 * _280.z) - 128.0));
    vec4 _285 = vec4(_280.y * _280.y, 0.0, 0.0, 0.0);
    vec4 _286 = vec4((_282.xyz * 2.007874011993408203125) - vec3(1.007874011993408203125), _282.w);
    _275 = _284;
    _276 = _285;
    _277 = _286;
}

