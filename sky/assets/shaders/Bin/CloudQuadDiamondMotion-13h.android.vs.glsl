#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _55_57
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
} _57;

layout(set = 0, binding = 0, std140) uniform _294_296
{
    float _m0;
    float _m1;
} _296;

layout(location = 0) out vec3 _83;
layout(location = 4) in vec4 _366;
layout(location = 3) in vec4 _377;
layout(location = 1) in vec4 _383;
layout(location = 6) in float _394;
layout(location = 5) in vec4 _415;
layout(location = 0) in vec3 _504;

void main()
{
    float _364 = _366.x;
    float _370 = _366.y;
    vec4 _376 = _377 + vec4(0.00196078442968428134918212890625);
    vec3 _386 = _383.xyz * 6.0;
    float _393 = _394;
    vec2 _405 = vec2(float(_393 > 0.0), (abs(_393) > 0.5) ? 0.0 : 1.0);
    vec4 _397;
    _397.z = _405.x;
    _397.w = _405.y;
    vec2 _411 = _397.zw;
    float _414 = _415.x;
    if (_414 > 0.5)
    {
        _370 = clamp(_370, 0.0, (_296._m0 * _296._m1) * 0.999000012874603271484375);
        float _438 = fract(_370);
        _370 -= _438;
        vec2 _457 = _411;
        vec4 _459 = _376;
        float _461 = _370;
        float _571 = floor(_461 / _296._m0);
        float _572 = floor(_461 - (_571 * _296._m0));
        vec2 _573 = _459.zw * vec2(1.0 / _296._m0, 1.0 / _296._m1);
        vec2 _574 = _459.xy + (_573 * vec2(_572, _571 + 1.0));
        _573.y *= (-1.0);
        vec2 _575 = _574 + (_573 * (vec2(0.5) + ((_457 - vec2(0.5)) * 0.980000019073486328125)));
        vec2 _456 = _575;
        _397.x = _456.x;
        _397.y = _456.y;
    }
    else
    {
        vec2 _482 = _411;
        vec4 _484 = _376;
        vec2 _481 = (_484.xy + vec2(0.0, _484.w)) + (_482 * vec2(_484.z, -_484.w));
        _397.x = _481.x;
        _397.y = _481.y;
    }
    float _496 = _364;
    vec3 _510 = _504;
    vec3 _512 = _386;
    vec2 _518 = _397.zw;
    float _521 = _496;
    vec4 _691 = _57._m8 * vec4(_510, 1.0);
    vec4 _692 = _57._m8 * vec4(_510 - (_512 * 3.0), 1.0);
    _83 = _510 - (_512 * 3.0);
    vec4 _693 = _691 - ((_692 + _691) * 0.5);
    _692 += _693;
    _691 += _693;
    vec4 _694 = _692 - _691;
    _692 -= (_694 * 0.25);
    _691 += (_694 * 0.25);
    vec2 _695 = _691.xy / vec2(_691.w);
    vec2 _696 = _692.xy / vec2(_692.w);
    vec2 _697 = _695 - _696;
    float _698 = length(_697);
    vec2 _700;
    if (_698 < 0.001000000047497451305389404296875)
    {
        _700 = vec2(0.0);
    }
    else
    {
        _700 = _697 / vec2(_698);
    }
    vec2 _699 = _700;
    vec2 _706 = vec2(-_699.y, _699.x);
    mat2 _707 = mat2(vec2(-_699), vec2(-_706));
    _707 = mat2(vec2(0.707106769084930419921875), vec2(-0.707106769084930419921875, 0.707106769084930419921875)) * _707;
    _518 = _707 * _518;
    _518 *= 1.0;
    float _708 = (_521 * _57._m7[0].x) / _691.w;
    float _709;
    if (_708 < 9.9999997473787516355514526367188e-05)
    {
        _709 = 1.0;
    }
    else
    {
        _709 = clamp(0.0040000001899898052215576171875 / _708, 1.0, 3.0);
    }
    _518 *= _709;
    vec4 _711 = vec4((vec2(_57._m7[0].x, _57._m7[1].y) * _521) * (_518 - vec2(0.5)), 0.0, 0.0);
    vec4 _712 = _691 + _711;
    vec4 _713 = _692 + _711;
    vec2 _714 = (_518 - vec2(0.5)) * 1.41421353816986083984375;
    float _715 = 0.5 + (0.5 * dot(_699, _714));
    vec4 _528 = mix(_713, _712, vec4(_715));
    gl_Position = _528;
}

