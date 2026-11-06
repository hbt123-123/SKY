#version 450

layout(set = 1, binding = 2, std140) uniform _109_111
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
} _111;

layout(set = 1, binding = 0, std140) uniform _242_244
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
    float _m4;
} _244;

layout(set = 1, binding = 1, std140) uniform _349_351
{
    vec4 _m0;
    vec2 _m1;
} _351;

layout(set = 1, binding = 3) uniform mediump sampler2D _98;
layout(set = 1, binding = 4) uniform sampler2D _365;

layout(location = 2) in vec3 _52;
layout(location = 1) in vec3 _70;
layout(location = 3) in vec2 _87;
layout(location = 0) in vec4 _93;
layout(location = 0) out vec4 _398;
layout(location = 1) out vec4 _410;

void main()
{
    float _49 = length(_52);
    vec3 _61;
    if (_49 > 9.9999999747524270787835121154785e-07)
    {
        _61 = normalize(_52);
    }
    else
    {
        _61 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _56 = _61;
    float _69 = length(_70);
    vec3 _76;
    if (_69 > 9.9999999747524270787835121154785e-07)
    {
        _76 = normalize(_70);
    }
    else
    {
        _76 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _73 = _76;
    vec2 _85 = _87;
    vec4 _91 = _93 * texture(_98, _85);
    vec4 _103 = _91;
    vec3 _105 = -_111._m44;
    vec3 _118 = _111._m47 * 1.0;
    vec3 _123 = (_111._m55.xyz * 1.0) * 3.1415927410125732421875;
    float _136 = dot(_73, _105);
    float _443 = max(_136, 0.0);
    float _132 = _443;
    vec3 _138 = _118 * _132;
    vec3 _142 = _56 + (_105 * 1.02499997615814208984375);
    float _148 = length(_142);
    vec3 _154;
    if (_148 > 9.9999999747524270787835121154785e-07)
    {
        _154 = _142 / vec3(_148);
    }
    else
    {
        _154 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _151 = _154;
    float _168 = 1.0 - dot(_56, _151);
    float _447 = clamp(_168, 0.0, 1.0);
    float _163 = _447;
    float _170 = mix(0.00999999977648258209228515625, 1.0, pow(clamp(_163, 0.0, 1.0), 5.0));
    float _177 = clamp(dot(_73, _151), 0.0, 1.0);
    float _188 = dot(_73, _105);
    float _451 = clamp(_188, 0.0, 1.0);
    vec3 _182 = (_111._m47 * _451) * vec3((4.0 * _170) * pow(max(_177, 9.9999999747524270787835121154785e-07), 2.0));
    float _201 = clamp(1.0 - dot(_56, _73), 0.0, 1.0);
    _182 += ((_123 * 0.5) * pow(max(_201, 9.9999999747524270787835121154785e-07), 8.0));
    _103 = vec4((_91.xyz * (_123 + _138)) + _182, _91.w);
    vec3 _232 = vec3(0.0);
    float _234 = dot(_91.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _250 = _244._m0.x > 9.9999999747524270787835121154785e-07;
    bool _258;
    if (_250)
    {
        _258 = _234 > (1.0 - _244._m0.x);
    }
    else
    {
        _258 = _250;
    }
    if (_258)
    {
        _232 = ((_91.xyz * (_244._m0.y + (_244._m1 * _111._m23))) * ((_234 - 1.0) + _244._m0.x)) / vec3(max(_244._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _232 *= (1.0 + _244._m0.z);
    vec4 _293 = _103;
    vec3 _295 = _293.xyz + _232;
    _103.x = _295.x;
    _103.y = _295.y;
    _103.z = _295.z;
    float _302 = dot(_73, _56);
    if (_244._m3 >= 0.0)
    {
        _103.w *= mix(1.0, pow(abs(_302), 3.0), _244._m3);
    }
    else
    {
        _103.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_302), 3.0), -_244._m3);
    }
    _103.w *= (1.0 - _244._m2);
    vec2 _345 = gl_FragCoord.xy * _351._m0.zw;
    float _356 = 1.0 / gl_FragCoord.w;
    float _372 = max(textureLod(_365, _345, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _455 = 1.0 / _372;
    float _361 = _111._m24 * _455;
    float _384 = abs(_361 - _356) / (1.0 + _244._m4);
    float _459 = clamp(_384, 0.0, 1.0);
    _103.w *= _459;
    float _392 = _356;
    float _463 = clamp(_392, 0.0, 1.0);
    _103.w *= _463;
    _398 = vec4(_103.xyz * _103.w, _103.w);
    float _416 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _417 = 256.0;
    float _467 = log(_416 * 20.0) * (_417 * 0.079292468726634979248046875);
    float _477 = max(_467, 0.0);
    float _468 = _477;
    _410 = vec4(_468 * _103.w, _103.w * 1000.0, 0.0, _103.w);
}

