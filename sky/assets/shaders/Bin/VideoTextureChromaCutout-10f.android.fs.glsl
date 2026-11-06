#version 450

layout(set = 1, binding = 0, std140) uniform _171_173
{
    float _m0;
    float _m1;
} _173;

layout(set = 1, binding = 2, std140) uniform _181_183
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
} _183;

layout(set = 1, binding = 3) uniform mediump sampler2D _13;

layout(location = 2) in vec2 _17;
layout(location = 0) out vec4 _229;

void main()
{
    vec4 _9 = texture(_13, _17);
    ivec2 _23 = textureSize(_13, 0);
    float _29 = dot(vec3(1.0), vec3(_9.xyz));
    _29 = min(_29, dot(vec3(1.0), vec3(texture(_13, _17 + (vec2(-1.0) / vec2(_23))).xyz)));
    _29 = min(_29, dot(vec3(1.0), vec3(texture(_13, _17 + (vec2(0.0, -1.0) / vec2(_23))).xyz)));
    _29 = min(_29, dot(vec3(1.0), vec3(texture(_13, _17 + (vec2(1.0, -1.0) / vec2(_23))).xyz)));
    _29 = min(_29, dot(vec3(1.0), vec3(texture(_13, _17 + (vec2(-1.0, 0.0) / vec2(_23))).xyz)));
    _29 = min(_29, dot(vec3(1.0), vec3(texture(_13, _17 + (vec2(1.0, 0.0) / vec2(_23))).xyz)));
    _29 = min(_29, dot(vec3(1.0), vec3(texture(_13, _17 + (vec2(-1.0, 1.0) / vec2(_23))).xyz)));
    _29 = min(_29, dot(vec3(1.0), vec3(texture(_13, _17 + (vec2(0.0, 1.0) / vec2(_23))).xyz)));
    _29 = min(_29, dot(vec3(1.0), vec3(texture(_13, _17 + (vec2(1.0) / vec2(_23))).xyz)));
    float _170 = _173._m1 + _183._m58;
    if (_29 < _170)
    {
        discard;
    }
    float _195 = max((0.19799999892711639404296875 + _183._m57) + _173._m0, 0.0);
    vec4 _206 = _9;
    vec3 _208 = _206.xyz * _195;
    _9.x = _208.x;
    _9.y = _208.y;
    _9.z = _208.z;
    vec4 _218 = _9;
    vec3 _221 = max(_218.xyz, vec3(0.0));
    _9.x = _221.x;
    _9.y = _221.y;
    _9.z = _221.z;
    _229 = vec4(_9.xyz, 1.0);
}

