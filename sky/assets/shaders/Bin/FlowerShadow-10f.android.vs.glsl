#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _126_128
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
} _128;

layout(set = 0, binding = 0, std140) uniform _204_206
{
    float _m0;
    float _m1;
} _206;

layout(set = 0, binding = 1, std140) uniform _382_384
{
    vec4 _m0;
    vec2 _m1;
} _384;

layout(set = 0, binding = 4) uniform mediump sampler2D _248;
layout(set = 0, binding = 3) uniform mediump sampler2D _266;

layout(location = 1) in vec4 _193;
layout(location = 0) in vec3 _220;
layout(location = 0) out vec4 _425;
layout(location = 1) out vec4 _432;

void main()
{
    bool _191 = _193.w >= 0.5;
    float _199 = 0.0;
    float _200 = 1.0;
    float _212 = _193.z * _206._m1;
    vec3 _218 = _220;
    vec3 _223 = _218.zxy;
    _223 = fract(_223 * 443.897491455078125);
    _223 += vec3(dot(_223, _223.yzx + vec3(19.1900005340576171875)));
    float _448 = fract((_223.x + _223.y) * _223.z);
    float _222 = _448;
    vec3 _227 = _128._m17 - _218;
    float _233 = length(_227);
    float _245 = _233 * 0.00999999977648258209228515625;
    float _471 = min(_245, 1.0);
    float _241 = _471;
    vec3 _249 = _218;
    float _251 = 1.0;
    float _475 = 0.039999999105930328369140625 * _251;
    float _476 = 0.02500000037252902984619140625 * _251;
    vec2 _477 = fract((_249.xz * _475) + _128._m68.xz);
    vec2 _478 = fract((_249.xz * _476) + _128._m69.xz);
    vec2 _480 = textureLod(_248, _478, 1.0).xy;
    vec2 _533 = (_480 * 2.0) - vec2(1.0);
    vec2 _479 = _533;
    vec4 _481 = textureLod(_248, _477, 1.0);
    vec4 _516 = _481;
    vec2 _523 = ((_516.xy - vec2(0.5)) * _479) + vec2(0.5);
    _481.x = _523.x;
    _481.y = _523.y;
    vec2 _483 = _481.xy;
    vec2 _539 = (_483 * 2.0) - vec2(1.0);
    vec2 _482 = -_539;
    vec2 _484 = _482;
    vec2 _247 = _484;
    vec2 _253 = (_218.xz - _128._m64.xy) * _128._m64.w;
    vec4 _265 = textureLod(_266, _253, 0.0);
    float _271 = _265.w;
    float _545 = clamp(_271, 0.0, 1.0);
    float _279 = (_545 * 8.0) - 4.0;
    float _549 = max(_279, 0.0);
    float _270 = _549;
    vec2 _281 = (_265.xy * 2.0) * _270;
    bool _287 = true;
    if (_287)
    {
        vec3 _294 = _218;
        vec2 _296 = _294.xz - (_281 * 1.0);
        _218.x = _296.x;
        _218.z = _296.y;
        vec3 _306 = _218;
        vec2 _308 = _306.xz + (_247 * mix(0.0500000007450580596923828125, 1.0, _241));
        _218.x = _308.x;
        _218.z = _308.y;
    }
    else
    {
        _247 = vec2(0.0);
    }
    if (_191)
    {
        vec3 _318 = -vec3(_128._m6[0].x, _128._m6[1].x, _128._m6[2].x);
        vec2 _329 = _247 - (_281 * 5.0);
        vec3 _335 = normalize(vec3(_329.x, -0.5, _329.y));
        _199 = dot(_318, _335);
        float _346 = 0.4000000059604644775390625;
        _199 = clamp(_199, -_346, _346);
    }
    float _353 = 0.0;
    vec3 _354 = vec3(0.0);
    _200 *= 0.20000000298023223876953125;
    _218.y += (_212 * 0.5);
    vec4 _373 = vec4(_218, 1.0);
    vec4 _374 = _128._m8 * _373;
    gl_Position = _374;
    float _377 = ((0.5 * _128._m18) * _384._m0.y) * pow(gl_Position.w, -0.75);
    _377 *= _212;
    vec4 _413;
    if (_191)
    {
        float _406 = length(_218 - _128._m17);
        float _407 = 10.0;
        float _408 = 20.0;
        float _553 = (_406 - _407) / (_408 - _407);
        float _564 = clamp(_553, 0.0, 1.0);
        float _554 = _564;
        _353 *= (1.0 + _554);
        _413 = vec4(0.5, _222, _199, _353);
    }
    else
    {
        _413 = vec4(0.0, _222, 0.0, 0.0);
    }
    float _423 = max(_377, 1.0);
    gl_PointSize = _423;
    _425 = vec4(_354, _200);
    _432 = _413;
}

