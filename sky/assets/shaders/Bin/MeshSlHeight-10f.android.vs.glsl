#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _96_98
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
} _98;

layout(set = 0, binding = 0, std140) uniform _121_123
{
    mat4 _m0;
    float _m1;
} _123;

layout(set = 0, binding = 3) uniform samplerCube _83;

layout(location = 6) out vec3 _111;
layout(location = 0) in vec3 _113;
layout(location = 2) in vec3 _118;
layout(location = 0) out vec3 _134;
layout(location = 1) out vec4 _171;
layout(location = 1) in vec4 _173;
layout(location = 3) out vec3 _175;
layout(location = 7) out vec3 _190;
layout(location = 8) out vec3 _198;
layout(location = 4) out vec4 _204;
layout(location = 3) in vec4 _205;
layout(location = 5) out vec4 _207;
layout(location = 4) in vec4 _208;
layout(location = 2) out vec4 _210;

void main()
{
    _111 = _113;
    vec3 _115 = _113;
    vec3 _117 = _118;
    vec3 _120 = (_123._m0 * vec4(_115, 1.0)).xyz;
    mat4 _135 = _123._m0;
    vec3 _138 = _117;
    mat4 _249 = _135;
    mat3 _258 = mat3(vec3(cross(_249[1].xyz, _249[2].xyz)), vec3(cross(_249[2].xyz, _249[0].xyz)), vec3(cross(_249[0].xyz, _249[1].xyz)));
    vec3 _250 = normalize(_258 * _138);
    _134 = _250;
    vec3 _141 = _120;
    if (_123._m1 != 0.0)
    {
        _141.y = _98._m96 - _141.y;
    }
    vec4 _167 = vec4(_141, 1.0);
    vec4 _168 = _98._m8 * _167;
    gl_Position = _168;
    _171 = _173;
    _175 = _98._m17 - _120;
    vec3 _182 = normalize(_175);
    vec3 _185 = reflect(-_182, _134);
    vec3 _193 = _134;
    float _195 = 5.0;
    vec4 _294 = textureLod(_83, _193, _195);
    vec3 _295 = (_294.xyz * _294.xyz) * (_98._m43 / _294.w);
    _190 = vec3(1.0) / _295;
    vec3 _199 = _185;
    float _201 = 5.0;
    vec4 _312 = textureLod(_83, _199, _201);
    vec3 _313 = (_312.xyz * _312.xyz) * (_98._m43 / _312.w);
    _198 = vec3(1.0) / _313;
    _204 = _205;
    _207 = _208;
    vec3 _221 = mix(_98._m51, _98._m47, vec3(0.25)) * 0.100000001490116119384765625;
    _210.x = _221.x;
    _210.y = _221.y;
    _210.z = _221.z;
    _210.w = 1.0;
}

