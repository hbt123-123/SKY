#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _85_87
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
} _87;

layout(set = 0, binding = 1, std140) uniform _161_163
{
    vec4 _m0;
    vec2 _m1;
} _163;

layout(set = 0, binding = 0, std140) uniform _307_309
{
    float _m0;
    float _m1;
    float _m2;
} _309;

layout(location = 0) in vec3 _279;
layout(location = 2) in vec3 _289;
layout(location = 5) in vec2 _302;
layout(location = 1) out float _336;
layout(location = 4) in uint _338;
layout(location = 1) in vec4 _344;
layout(location = 3) in vec4 _351;
layout(location = 0) out vec4 _371;

void main()
{
    vec4 _273 = _87._m8 * vec4(_279, 1.0);
    vec4 _286 = _87._m8 * vec4(_289, 1.0);
    float _311 = mix(_273.w, _286.w, _302.x);
    float _312 = _309._m1;
    float _389 = 1.0 - (_312 / max(_311, 0.001000000047497451305389404296875));
    float _398 = clamp(_389, 0.0, 1.0);
    float _390 = _398;
    float _296 = _390;
    float _316 = mix(_309._m0, 1.0, _296);
    vec4 _324 = _273;
    vec4 _326 = _286;
    vec2 _328 = _302;
    float _330 = _316;
    vec4 _403;
    do
    {
        bool _422 = _324.w < _87._m24;
        bool _430;
        if (_422)
        {
            _430 = _326.w < _87._m24;
        }
        else
        {
            _430 = _422;
        }
        if (_430)
        {
            _403 = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        if (_324.w < _87._m24)
        {
            _324 = mix(_324, _326, vec4((_87._m24 - _324.w) / (_326.w - _324.w)));
        }
        else
        {
            if (_326.w < _87._m24)
            {
                _326 = mix(_326, _324, vec4((_87._m24 - _326.w) / (_324.w - _326.w)));
            }
        }
        vec2 _404 = ((_324.xy / vec2(_324.w)) * 0.5) * _163._m0.xy;
        vec2 _405 = ((_326.xy / vec2(_326.w)) * 0.5) * _163._m0.xy;
        vec2 _406 = _405 - _404;
        float _407 = length(_406);
        vec2 _409;
        if (_407 > 9.9999997473787516355514526367188e-05)
        {
            _409 = _406 / vec2(_407);
        }
        else
        {
            _409 = vec2(1.0, 0.0);
        }
        vec2 _408 = _409;
        vec2 _410 = vec2(-_408.y, _408.x);
        float _411 = max(_330, 1.0) * 0.5;
        vec2 _412 = _410 * (_328.y * _411);
        vec2 _413 = _412 / (_163._m0.xy * 0.5);
        vec4 _414 = mix(_324, _326, vec4(_328.x));
        float _544 = _414.w;
        vec4 _546 = _414;
        vec2 _548 = _546.xy + (_413 * _544);
        _414.x = _548.x;
        _414.y = _548.y;
        float _558 = _414.w;
        vec4 _560 = _414;
        vec2 _562 = _560.xy + ((_87._m32.xy * 2.0) * _558);
        _414.x = _562.x;
        _414.y = _562.y;
        _414.w += ((-0.001000000047497451305389404296875) * abs(_414.w));
        _403 = _414;
        break;
    } while(false);
    vec4 _415 = _403;
    gl_Position = _415;
    uint _339 = _338;
    float _578;
    if ((_339 & 128u) != 0u)
    {
        _578 = 4.0;
    }
    else
    {
        float _579;
        if ((_339 & 64u) != 0u)
        {
            _579 = 2.0;
        }
        else
        {
            _579 = float((_339 & 1u) != 0u);
        }
        _578 = _579;
    }
    float _580 = _578;
    _336 = _580;
    vec4 _342 = mix(vec4(_344), vec4(_351), vec4(_302.x));
    _342.w *= mix(1.0, _309._m2, _296);
    _371 = vec4(_342);
}

