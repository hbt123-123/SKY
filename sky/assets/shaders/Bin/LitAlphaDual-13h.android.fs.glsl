#version 450

layout(set = 1, binding = 2, std140) uniform _112_114
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
} _114;

layout(set = 1, binding = 0, std140) uniform _244_246
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
} _246;

layout(set = 1, binding = 3) uniform mediump sampler2D _88;
layout(set = 1, binding = 4) uniform mediump sampler2D _95;

layout(location = 2) in vec3 _45;
layout(location = 1) in vec3 _63;
layout(location = 3) in vec4 _80;
layout(location = 0) in vec4 _83;
layout(location = 0) out vec4 _348;
layout(location = 1) out vec4 _360;

void main()
{
    float _42 = length(_45);
    vec3 _54;
    if (_42 > 9.9999999747524270787835121154785e-07)
    {
        _54 = normalize(_45);
    }
    else
    {
        _54 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _49 = _54;
    float _62 = length(_63);
    vec3 _69;
    if (_62 > 9.9999999747524270787835121154785e-07)
    {
        _69 = normalize(_63);
    }
    else
    {
        _69 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _66 = _69;
    vec4 _78 = _80;
    vec4 _82 = _83 * texture(_88, _78.xy);
    _82.w *= texture(_95, _78.zw).w;
    vec4 _107 = _82;
    vec3 _109 = -_114._m44;
    vec3 _121 = _114._m47 * 1.0;
    vec3 _126 = (_114._m55.xyz * 1.0) * 3.1415927410125732421875;
    float _139 = dot(_66, _109);
    float _400 = max(_139, 0.0);
    float _135 = _400;
    vec3 _141 = _121 * _135;
    vec3 _145 = _49 + (_109 * 1.02499997615814208984375);
    float _151 = length(_145);
    vec3 _157;
    if (_151 > 9.9999999747524270787835121154785e-07)
    {
        _157 = _145 / vec3(_151);
    }
    else
    {
        _157 = vec3(0.0, 0.0, 1.0);
    }
    vec3 _154 = _157;
    float _171 = 1.0 - dot(_49, _154);
    float _404 = clamp(_171, 0.0, 1.0);
    float _166 = _404;
    float _173 = mix(0.00999999977648258209228515625, 1.0, pow(clamp(_166, 0.0, 1.0), 5.0));
    float _180 = clamp(dot(_66, _154), 0.0, 1.0);
    float _191 = dot(_66, _109);
    float _408 = clamp(_191, 0.0, 1.0);
    vec3 _185 = (_114._m47 * _408) * vec3((4.0 * _173) * pow(max(_180, 9.9999999747524270787835121154785e-07), 2.0));
    float _204 = clamp(1.0 - dot(_49, _66), 0.0, 1.0);
    _185 += ((_126 * 0.5) * pow(max(_204, 9.9999999747524270787835121154785e-07), 8.0));
    _107 = vec4((_82.xyz * (_126 + _141)) + _185, _82.w);
    vec3 _234 = vec3(0.0);
    float _236 = dot(_82.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
    bool _252 = _246._m0.x > 9.9999999747524270787835121154785e-07;
    bool _260;
    if (_252)
    {
        _260 = _236 > (1.0 - _246._m0.x);
    }
    else
    {
        _260 = _252;
    }
    if (_260)
    {
        _234 = ((_82.xyz * (_246._m0.y + (_246._m1 * _114._m23))) * ((_236 - 1.0) + _246._m0.x)) / vec3(max(_246._m0.x, 9.9999999747524270787835121154785e-07));
    }
    _234 *= (1.0 + _246._m0.z);
    vec4 _295 = _107;
    vec3 _297 = _295.xyz + _234;
    _107.x = _297.x;
    _107.y = _297.y;
    _107.z = _297.z;
    float _304 = dot(_66, _49);
    if (_246._m3 >= 0.0)
    {
        _107.w *= mix(1.0, pow(abs(_304), 3.0), _246._m3);
    }
    else
    {
        _107.w *= mix(1.0, pow(1.0099999904632568359375 - abs(_304), 3.0), -_246._m3);
    }
    _107.w *= (1.0 - _246._m2);
    _348 = vec4(_107.xyz * _107.w, _107.w);
    float _368 = 1.0 / (gl_FragCoord.w * 1.0099999904632568359375);
    float _369 = 256.0;
    float _412 = log(_368 * 20.0) * (_369 * 0.079292468726634979248046875);
    float _422 = max(_412, 0.0);
    float _413 = _422;
    _360 = vec4(_413 * _107.w, _107.w * 1000.0, 0.0, _107.w);
}

