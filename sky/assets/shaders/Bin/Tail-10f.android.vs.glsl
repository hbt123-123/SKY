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

layout(set = 0, binding = 1, std140) uniform _126_128
{
    vec4 _m0;
    vec2 _m1;
} _128;

layout(set = 0, binding = 0, std140) uniform _170_172
{
    float _m0;
} _172;

layout(location = 2) in vec4 _36;
layout(location = 1) in vec4 _41;
layout(location = 0) in vec3 _67;
layout(location = 0) out vec2 _76;
layout(location = 1) out vec4 _82;
layout(location = 3) in float _152;

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
    _82.w = _34.w;
    float _106 = (-_54.z) - 0.800000011920928955078125;
    float _247 = max(_106, 0.0);
    float _110 = _247 / 1.2999999523162841796875;
    float _251 = min(_110, 1.0);
    float _100 = _251;
    _82.w *= pow(_100, 4.0);
    float _119 = ((_40 * _60._m18) * _128._m0.y) / (-_54.z);
    float _137 = max(1.0, (_82.w * 2.0) / _119);
    _40 *= _137;
    float _148 = _60._m20 - _152;
    float _159 = 8.0 * _148;
    float _255 = min(_159, 1.0);
    float _155 = _255;
    float _161 = sqrt(1.0 - ((1.0 - _155) * (1.0 - _155)));
    float _180 = (_172._m0 - _148) / _172._m0;
    float _259 = clamp(_180, 0.0, 1.0);
    float _169 = pow(_259, 1.2999999523162841796875);
    float _183 = 1.0;
    vec3 _184 = _41.yzw;
    vec3 _187 = normalize(_60._m17 - _67);
    vec3 _195 = cross(_184, _187);
    vec3 _199 = _67 + (_195 * (((((2.0 * _183) * _161) * _169) * _40) * sign(_41.x)));
    vec4 _226 = vec4(_199, 1.0);
    vec4 _227 = _60._m8 * _226;
    gl_Position = _227;
}

