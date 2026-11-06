#version 450

layout(set = 1, binding = 2, std140) uniform _128_130
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
} _130;

layout(set = 1, binding = 0, std140) uniform _261_263
{
    vec4 _m0;
    float _m1;
    vec2 _m2;
    float _m3;
    float _m4;
    float _m5;
} _263;

layout(set = 1, binding = 1, std140) uniform _368_370
{
    vec4 _m0;
    vec2 _m1;
} _370;

layout(set = 1, binding = 3) uniform mediump sampler2D _117;
layout(set = 1, binding = 4) uniform sampler2D _384;

layout(location = 2) in vec3 _69;
layout(location = 1) in vec3 _89;
layout(location = 3) in vec2 _106;
layout(location = 0) in vec4 _112;
layout(location = 0) out vec4 _435;
layout(location = 1) out vec4 _447;

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
    vec3 _124 = -_130._m44;
    vec3 _137 = _130._m47 * 1.0;
    vec3 _142 = (_130._m55.xyz * 1.0) * 3.1415927410125732421875;
    float _155 = dot(_92, _124);
    float _480 = max(_155, 0.0);
    float _151 = _480;
    vec3 _157 = _137 * _151;
    vec3 _161 = _73 + (_124 * 1.02499997615814208984375);
    float _167 = length(_161);
    vec3 _173;
    if (_167 > 9.9999999747524270787835121154785e-07)
    {
        _173 = _161 / vec3(_167);
    }
    else
    {
        _173 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _170 = _173;
    float _187 = 1.0 - dot(_73, _170);
    float _484 = clamp(_187, 0.0, 1.0);
    float _182 = _484;
    float _189 = mix(0.00999999977648258209228515625, 1.0, pow(clamp(_182, 0.0, 1.0), 5.0));
    float _196 = clamp(dot(_92, _170), 0.0, 1.0);
    float _207 = dot(_92, _124);
    float _488 = clamp(_207, 0.0, 1.0);
    vec3 _201 = (_130._m47 * _488) * vec3((4.0 * _189) * pow(max(_196, 9.9999999747524270787835121154785e-07), 2.0));
    float _220 = clamp(1.0 - dot(_73, _92), 0.0, 1.0);
    _201 += ((_142 * 0.5) * pow(max(_220, 9.9999999747524270787835121154785e-07), 8.0));
    _122 = vec4((_110.xyz * (_142 + _157)) + _201, _110.w);
    vec3 _251 = vec3(0.0);
    float _253 = dot(_110.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _269 = _263._m0.x > 9.9999999747524270787835121154785e-07;
    bool _277;
    if (_269)
    {
        _277 = _253 > (1.0 - _263._m0.x);
    }
    else
    {
        _277 = _269;
    }
    if (_277)
    {
        _251 = ((_110.xyz * (_263._m0.y + (_263._m1 * _130._m23))) * ((_253 - 1.0) + _263._m0.x)) / vec3(max(_263._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _251 *= (1.0 + _263._m0.z);
    vec4 _312 = _122;
    vec3 _314 = _312.xyz + _251;
    _122.x = _314.x;
    _122.y = _314.y;
    _122.z = _314.z;
    float _321 = dot(_92, _73);
    if (_263._m4 >= 0.0)
    {
        _122.w *= mix(1.0, pow(abs(_321), 3.0), _263._m4);
    }
    else
    {
        _122.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_321), 3.0), -_263._m4);
    }
    _122.w *= (1.0 - _263._m3);
    vec2 _364 = gl_FragCoord.xy * _370._m0.zw;
    float _375 = 1.0 / gl_FragCoord.w;
    float _391 = max(textureLod(_384, _364, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _492 = 1.0 / _391;
    float _380 = _130._m24 * _492;
    float _403 = abs(_380 - _375) / (1.0 + _263._m5);
    float _496 = clamp(_403, 0.0, 1.0);
    _122.w *= _496;
    float _411 = _375;
    float _500 = clamp(_411, 0.0, 1.0);
    _122.w *= _500;
    float _418 = _66;
    float _420 = _263._m2.x;
    float _423 = _263._m2.y;
    float _504 = (_418 - _420) / (_423 - _420);
    float _515 = clamp(_504, 0.0, 1.0);
    float _505 = _515;
    float _416 = _505;
    _122.w *= (_416 * _416);
    _435 = vec4(_122.xyz * _122.w, _122.w);
    float _453 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _454 = 256.0;
    float _519 = log(_453 * 20.0) * (_454 * 0.079292468726634979248046875);
    float _529 = max(_519, 0.0);
    float _520 = _529;
    _447 = vec4(_520 * _122.w, _122.w * 1000.0, 0.0, _122.w);
}

