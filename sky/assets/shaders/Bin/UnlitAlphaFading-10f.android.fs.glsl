#version 450

layout(set = 1, binding = 0, std140) uniform _134_136
{
    vec4 _m0;
    float _m1;
    vec2 _m2;
    float _m3;
    float _m4;
    float _m5;
} _136;

layout(set = 1, binding = 2, std140) uniform _165_167
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
} _167;

layout(set = 1, binding = 1, std140) uniform _249_251
{
    vec4 _m0;
    vec2 _m1;
} _251;

layout(set = 1, binding = 3) uniform mediump sampler2D _117;
layout(set = 1, binding = 4) uniform sampler2D _266;

layout(location = 2) in vec3 _69;
layout(location = 1) in vec3 _89;
layout(location = 3) in vec2 _106;
layout(location = 0) in vec4 _112;
layout(location = 0) out vec4 _317;
layout(location = 1) out vec4 _329;

void main()
{
    float _66 = length(_69);
    vec3 _78;
    if (_66 > 9.9999999747524270787835121154785e-07)
    {
        _78 = _69 / vec3(_66);
    }
    else
    {
        _78 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _73 = _78;
    float _88 = length(_89);
    vec3 _95;
    if (_88 > 9.9999999747524270787835121154785e-07)
    {
        _95 = normalize(_89);
    }
    else
    {
        _95 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _92 = _95;
    vec2 _104 = _106;
    vec4 _110 = _112 * texture(_117, _104);
    vec4 _122 = _110;
    vec3 _124 = vec3(0.0);
    float _126 = dot(_110.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _144 = _136._m0.x > 9.9999999747524270787835121154785e-07;
    bool _152;
    if (_144)
    {
        _152 = _126 > (1.0 - _136._m0.x);
    }
    else
    {
        _152 = _144;
    }
    if (_152)
    {
        _124 = ((_110.xyz * (_136._m0.y + (_136._m1 * _167._m23))) * ((_126 - 1.0) + _136._m0.x)) / vec3(max(_136._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _124 *= (1.0 + _136._m0.z);
    vec4 _192 = _122;
    vec3 _194 = _192.xyz + _124;
    _122.x = _194.x;
    _122.y = _194.y;
    _122.z = _194.z;
    float _201 = dot(_92, _73);
    if (_136._m4 >= 0.0)
    {
        _122.w *= mix(1.0, pow(abs(_201), 3.0), _136._m4);
    }
    else
    {
        _122.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_201), 3.0), -_136._m4);
    }
    _122.w *= (1.0 - _136._m3);
    vec2 _245 = gl_FragCoord.xy * _251._m0.zw;
    float _257 = 1.0 / gl_FragCoord.w;
    float _273 = max(textureLod(_266, _245, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _362 = 1.0 / _273;
    float _262 = _167._m24 * _362;
    float _285 = abs(_262 - _257) / (1.0 + _136._m5);
    float _366 = clamp(_285, 0.0, 1.0);
    _122.w *= _366;
    float _293 = _257;
    float _370 = clamp(_293, 0.0, 1.0);
    _122.w *= _370;
    float _300 = _66;
    float _302 = _136._m2.x;
    float _305 = _136._m2.y;
    float _374 = (_300 - _302) / (_305 - _302);
    float _385 = clamp(_374, 0.0, 1.0);
    float _375 = _385;
    float _298 = _375;
    _122.w *= (_298 * _298);
    _317 = vec4(_122.xyz * _122.w, _122.w);
    float _335 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _336 = 256.0;
    float _389 = log(_335 * 20.0) * (_336 * 0.079292468726634979248046875);
    float _399 = max(_389, 0.0);
    float _390 = _399;
    _329 = vec4(_390 * _122.w, _122.w * 1000.0, 0.0, _122.w);
}

