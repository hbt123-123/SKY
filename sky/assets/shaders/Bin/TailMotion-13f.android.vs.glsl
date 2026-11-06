#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _58_60
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
} _60;

layout(set = 0, binding = 1, std140) uniform _124_126
{
    vec4 _m0;
    vec2 _m1;
} _126;

layout(set = 0, binding = 0, std140) uniform _168_170
{
    float _m0;
} _170;

layout(location = 2) in vec4 _36;
layout(location = 1) in vec4 _41;
layout(location = 0) in vec3 _67;
layout(location = 0) out vec2 _76;
layout(location = 1) out vec4 _82;
layout(location = 3) in float _150;
layout(location = 2) out vec3 _228;

void main()
{
    vec4 _34 = _36 * _36;
    float _40 = (abs(_41.x) * 0.24899999797344207763671875) + 0.001000000047497451305389404296875;
    vec3 _54 = (_60._m6 * vec4(_67, 1.0)).xyz;
    _76 = vec2(sign(_41.x));
    vec3 _86 = _34.xyz * 16.0;
    _82.x = _86.x;
    _82.y = _86.y;
    _82.z = _86.z;
    _82.w = 1.0;
    float _104 = (-_54.z) - 0.800000011920928955078125;
    float _257 = max(_104, 0.0);
    float _108 = _257 / 1.2999999523162841796875;
    float _261 = min(_108, 1.0);
    float _98 = _261;
    _82.w *= pow(_98, 4.0);
    float _117 = ((_40 * _60._m18) * _126._m0.y) / (-_54.z);
    float _135 = max(1.0, (_82.w * 2.0) / _117);
    _40 *= _135;
    float _146 = _60._m20 - _150;
    float _157 = 8.0 * _146;
    float _265 = min(_157, 1.0);
    float _153 = _265;
    float _159 = sqrt(1.0 - ((1.0 - _153) * (1.0 - _153)));
    float _178 = (_170._m0 - _146) / _170._m0;
    float _269 = clamp(_178, 0.0, 1.0);
    float _167 = pow(_269, 1.2999999523162841796875);
    float _181 = 1.0;
    vec3 _182 = _41.yzw;
    vec3 _185 = normalize(_60._m17 - _67);
    vec3 _193 = cross(_182, _185);
    vec3 _197 = _67 + (_193 * (((((2.0 * _181) * _159) * _167) * _40) * sign(_41.x)));
    vec4 _224 = vec4(_197, 1.0);
    vec4 _225 = _60._m8 * _224;
    gl_Position = _225;
    _228 = _197 + (_182 * length(_60._m30));
}

