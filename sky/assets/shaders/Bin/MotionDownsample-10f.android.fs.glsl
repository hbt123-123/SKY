#version 450

layout(set = 1, binding = 2, std140) uniform _83_85
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
} _85;

layout(set = 1, binding = 3) uniform mediump sampler2D _67;
layout(set = 1, binding = 0) uniform mediump sampler2D _190;

layout(location = 0) in vec2 _61;
layout(location = 0) out vec4 _205;

void main()
{
    vec2 _59 = _61;
    float _63 = abs(texture(_67, _59).w);
    if (_63 > 0.0401999987661838531494140625)
    {
        vec4 _79 = vec4(_59 + (_85._m1.zw * 1.5), _59 - (_85._m1.zw * 1.5));
        vec4 _106 = vec4(_79.x, _59.y, _79.z, 0.0);
        vec4 _115 = vec4(_59.x, _79.y, 0.0, _79.w);
        vec4 _125[2];
        _125[0].x = texture(_67, _79.xy).w;
        _125[0].y = texture(_67, _79.zy).w;
        _125[0].z = texture(_67, _79.xw).w;
        _125[0].w = texture(_67, _79.zw).w;
        _125[1].x = texture(_67, _106.xy).w;
        _125[1].y = texture(_67, _106.zy).w;
        _125[1].z = texture(_67, _115.xy).w;
        _125[1].w = texture(_67, _115.xw).w;
        vec4 _179 = abs(_125[0]);
        float _232 = min(min(_179.x, _179.y), min(_179.z, _179.w));
        _63 = min(_63, _232);
        vec4 _186 = abs(_125[1]);
        float _245 = min(min(_186.x, _186.y), min(_186.z, _186.w));
        _63 = min(_63, _245);
    }
    vec3 _194 = texture(_190, _59).xyz;
    vec3 _258 = max(vec3(9.9999997473787516355514526367188e-05), _194);
    vec3 _265 = vec3(1.0) / _258;
    vec3 _259 = _265 - vec3(1.0);
    vec3 _189 = _259;
    vec4 _197 = vec4(_189, _63);
    _205 = vec4(_197);
}

