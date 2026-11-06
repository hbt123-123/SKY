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

layout(set = 0, binding = 0, std140) uniform _202_204
{
    mat4 _m0;
    float _m1;
} _204;

layout(set = 0, binding = 3) uniform samplerCube _83;

layout(location = 0) in vec3 _112;
layout(location = 2) in vec3 _115;
layout(location = 0) out vec3 _216;
layout(location = 1) out vec4 _252;
layout(location = 1) in vec4 _254;
layout(location = 3) out vec3 _256;
layout(location = 6) out vec3 _271;
layout(location = 7) out vec3 _279;
layout(location = 4) out vec4 _285;
layout(location = 3) in vec4 _286;
layout(location = 5) out vec4 _288;
layout(location = 4) in vec4 _289;
layout(location = 2) out vec4 _291;

void main()
{
    vec3 _110 = _112;
    vec3 _114 = _115;
    float _117 = min(_110.y * 0.0500000007450580596923828125, 1.0);
    float _124 = 0.100000001490116119384765625;
    float _126 = 0.5;
    _110.x += ((_117 * sin((((_110.x + _110.y) + _110.z) * _124) + _98._m20)) * _126);
    _110.y += ((_117 * sin((((_110.x + _110.y) + _110.z) * _124) + (_98._m20 * 0.86699998378753662109375))) * _126);
    _110.z += ((_117 * sin((((_110.x + _110.y) + _110.z) * _124) + (_98._m20 * 0.53090000152587890625))) * _126);
    vec3 _201 = (_204._m0 * vec4(_110, 1.0)).xyz;
    mat4 _217 = _204._m0;
    vec3 _220 = _114;
    mat4 _329 = _217;
    mat3 _338 = mat3(vec3(cross(_329[1].xyz, _329[2].xyz)), vec3(cross(_329[2].xyz, _329[0].xyz)), vec3(cross(_329[0].xyz, _329[1].xyz)));
    vec3 _330 = normalize(_338 * _220);
    _216 = _330;
    vec3 _223 = _201;
    if (_204._m1 != 0.0)
    {
        _223.y = _98._m96 - _223.y;
    }
    vec4 _248 = vec4(_223, 1.0);
    vec4 _249 = _98._m8 * _248;
    gl_Position = _249;
    _252 = _254;
    _256 = _98._m17 - _201;
    vec3 _263 = normalize(_256);
    vec3 _266 = reflect(-_263, _216);
    vec3 _274 = _216;
    float _276 = 5.0;
    vec4 _374 = textureLod(_83, _274, _276);
    vec3 _375 = (_374.xyz * _374.xyz) * (_98._m43 / _374.w);
    _271 = vec3(1.0) / _375;
    vec3 _280 = _266;
    float _282 = 5.0;
    vec4 _392 = textureLod(_83, _280, _282);
    vec3 _393 = (_392.xyz * _392.xyz) * (_98._m43 / _392.w);
    _279 = vec3(1.0) / _393;
    _285 = _286;
    _288 = _289;
    vec3 _301 = mix(_98._m51, _98._m47, vec3(0.25)) * 0.100000001490116119384765625;
    _291.x = _301.x;
    _291.y = _301.y;
    _291.z = _301.z;
    _291.w = 1.0;
}

