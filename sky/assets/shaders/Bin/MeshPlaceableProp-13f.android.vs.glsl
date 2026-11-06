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

layout(set = 0, binding = 0, std140) uniform _118_120
{
    mat4 _m0;
    float _m1;
} _120;

layout(set = 0, binding = 3) uniform samplerCube _83;

layout(location = 0) in vec3 _112;
layout(location = 2) in vec3 _115;
layout(location = 0) out vec3 _132;
layout(location = 1) out vec4 _169;
layout(location = 1) in vec4 _171;
layout(location = 3) out vec3 _173;
layout(location = 6) out vec3 _188;
layout(location = 7) out vec3 _196;
layout(location = 4) out vec4 _202;
layout(location = 3) in vec4 _203;
layout(location = 5) out vec4 _205;
layout(location = 4) in vec4 _206;
layout(location = 2) out vec4 _208;

void main()
{
    vec3 _110 = _112;
    vec3 _114 = _115;
    vec3 _117 = (_120._m0 * vec4(_110, 1.0)).xyz;
    mat4 _133 = _120._m0;
    vec3 _136 = _114;
    mat4 _244 = _133;
    mat3 _253 = mat3(vec3(cross(_244[1].xyz, _244[2].xyz)), vec3(cross(_244[2].xyz, _244[0].xyz)), vec3(cross(_244[0].xyz, _244[1].xyz)));
    vec3 _245 = normalize(_253 * _136);
    _132 = _245;
    vec3 _139 = _117;
    if (_120._m1 != 0.0)
    {
        _139.y = _98._m96 - _139.y;
    }
    vec4 _165 = vec4(_139, 1.0);
    vec4 _166 = _98._m8 * _165;
    gl_Position = _166;
    _169 = _171;
    _173 = _98._m17 - _117;
    vec3 _180 = normalize(_173);
    vec3 _183 = reflect(-_180, _132);
    vec3 _191 = _132;
    float _193 = 5.0;
    vec4 _289 = textureLod(_83, _191, _193);
    vec3 _290 = (_289.xyz * _289.xyz) * (_98._m43 / _289.w);
    _188 = vec3(1.0) / _290;
    vec3 _197 = _183;
    float _199 = 5.0;
    vec4 _307 = textureLod(_83, _197, _199);
    vec3 _308 = (_307.xyz * _307.xyz) * (_98._m43 / _307.w);
    _196 = vec3(1.0) / _308;
    _202 = _203;
    _205 = _206;
    vec3 _210 = _132;
    float _212 = 4.5;
    vec4 _325 = textureLod(_83, _210, _212);
    vec3 _326 = (_325.xyz * _325.xyz) * (_98._m43 / _325.w);
    _208.x = _326.x;
    _208.y = _326.y;
    _208.z = _326.z;
    _208.w = 0.0500000007450580596923828125;
}

