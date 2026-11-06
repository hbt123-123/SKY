#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _87_89
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
} _89;

layout(set = 0, binding = 0, std140) uniform _121_123
{
    mat4 _m0;
    vec4 _m1;
    vec4 _m2;
} _123;

layout(set = 0, binding = 3) uniform mediump sampler3D _110;

layout(location = 0) out vec3 _120;
layout(location = 2) in vec4 _125;
layout(location = 0) in vec3 _136;
layout(location = 2) out vec3 _219;
layout(location = 1) out vec3 _230;

void main()
{
    mat4 _126 = _123._m0;
    vec3 _130 = _125.xyz;
    mat4 _283 = _126;
    mat3 _292 = mat3(vec3(cross(_283[1].xyz, _283[2].xyz)), vec3(cross(_283[2].xyz, _283[0].xyz)), vec3(cross(_283[0].xyz, _283[1].xyz)));
    vec3 _284 = normalize(_292 * _130);
    _120 = _284;
    vec3 _134 = _136;
    float _138 = _89._m20 * _123._m1.z;
    float _146 = (sin(_138 + (_134.x * _123._m1.x)) * _123._m1.y) * 0.00999999977648258209228515625;
    float _161 = (cos(_138 + (_134.z * _123._m1.x)) * _123._m1.y) * 0.00999999977648258209228515625;
    float _174 = (sin(_138 + (_134.y * _123._m1.x)) * _123._m1.y) * 0.00999999977648258209228515625;
    _134.y += _146;
    _134.x += _161;
    _134.z += _174;
    vec3 _202 = (_123._m0 * vec4(_134, 1.0)).xyz;
    vec3 _213 = _202;
    float _215 = _123._m1.w;
    _215 *= 0.5;
    vec3 _328 = (((_213 - _89._m80.xyz) * _215) * 0.015625) * 6.0;
    float _329 = _89._m79.w * textureLod(_110, _328, 0.0).x;
    float _212 = _329;
    _219 = _202 + (_120 * ((_212 * _123._m1.w) * 0.100000001490116119384765625));
    _230 = _89._m17 - _219;
    vec4 _247 = vec4(_219, 1.0);
    vec4 _248 = _89._m8 * _247;
    gl_Position = _248;
}

