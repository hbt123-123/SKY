#version 450

layout(set = 1, binding = 0, std140) uniform _109_111
{
    float _m0;
    float _m1;
    float _m2;
    float _m3;
    float _m4;
    float _m5;
    float _m6;
    float _m7;
    float _m8;
} _111;

layout(set = 1, binding = 2, std140) uniform _119_121
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
} _121;

layout(set = 1, binding = 1, std140) uniform _482_484
{
    vec4 _m0;
    vec2 _m1;
} _484;

layout(set = 1, binding = 6) uniform mediump sampler2D _93;
layout(set = 1, binding = 3) uniform mediump sampler2D _362;
layout(set = 1, binding = 4) uniform mediump sampler2D _409;
layout(set = 1, binding = 5) uniform sampler2D _499;

layout(location = 0) in vec4 _77;
layout(location = 1) in vec3 _86;
layout(location = 0) out vec4 _519;
layout(location = 1) out vec4 _531;

void main()
{
    vec2 _74 = _77.xy;
    vec2 _80 = _77.zw;
    vec2 _83 = _86.xy;
    float _89 = texture(_93, _80).w;
    _83 *= ((_89 - 0.5) * 2.0);
    _83 = vec2(0.0);
    _83.y = 0.004999999888241291046142578125 * sin((_111._m8 + _121._m20) * 2.0);
    vec4 _131 = texture(_93, _80 - _83);
    _131.w = 1.0;
    vec4 _144 = _131;
    vec3 _146 = _144.xyz * (sqrt(_121._m55.w) * 0.785398185253143310546875);
    _131.x = _146.x;
    _131.y = _146.y;
    _131.z = _146.z;
    vec2 _154 = (_74 * 2.0) - vec2(1.0);
    vec2 _180 = _154;
    float _567 = sqrt(dot(_180, _180));
    float _568 = atan(_180.y, _180.x);
    vec2 _569 = vec2(_567, _568);
    vec2 _179 = _569;
    float _183 = fract(((_179.y + 3.1415927410125732421875) * 0.15915493667125701904296875) + 0.25);
    float _197 = 0.0;
    for (int _199 = 0; _199 < 3; _199++)
    {
        float _210 = 3.0;
        float _212 = 0.87999999523162841796875;
        float _214 = 31.5;
        switch (_199)
        {
            case 0:
            {
                _210 *= 1.0;
                _212 *= 0.20000000298023223876953125;
                _214 *= 1.0;
                break;
            }
            case 1:
            {
                _210 *= 2.2558200359344482421875;
                _212 *= 0.100000001490116119384765625;
                _214 *= 1.2558200359344482421875;
                break;
            }
            case 2:
            {
                _210 *= 5.350180149078369140625;
                _212 *= 0.0500000007450580596923828125;
                _214 *= 2.3501799106597900390625;
                break;
            }
        }
        float _250 = (0.5 + (sin((_183 * _214) + (((-(_121._m20 + _111._m6)) * _210) * 0.5)) * 0.5)) * _212;
        _197 += _250;
    }
    float _275 = 1.0 - _197;
    float _278 = pow(0.5 + (sin(((_183 + 0.25) * 3.1415927410125732421875) * 2.0) * 0.5), 10.0);
    float _288 = pow(0.5 + (sin(((_183 - 0.25) * 3.1415927410125732421875) * 2.0) * 0.5), 30.0);
    float _298 = mix(_275, 1.0, _278);
    _298 = mix(_298, 1.0, _288);
    vec4 _317 = _131;
    vec3 _319 = _317.xyz * max(1.75 + (0.25 * sin(_121._m20 * 2.0)), 1.0);
    _131.x = _319.x;
    _131.y = _319.y;
    _131.z = _319.z;
    vec4 _336 = _131;
    vec3 _338 = _336.xyz * ((_111._m4 * _111._m2) * _111._m3);
    _131.x = _338.x;
    _131.y = _338.y;
    _131.z = _338.z;
    float _345 = dot(_154, _154);
    _179.x += (_121._m20 * 0.100000001490116119384765625);
    _179.y += _345;
    float _361 = texture(_362, _179 * vec2(0.20000000298023223876953125, 0.3183098733425140380859375)).x;
    _361 = pow(_361, 7.0);
    _361 *= _345;
    vec4 _380 = _131;
    vec3 _382 = _380.xyz * (1.0 + (_361 * 50.0));
    _131.x = _382.x;
    _131.y = _382.y;
    _131.z = _382.z;
    vec2 _389 = vec2(fract((_179.x * 0.20000000298023223876953125) + ((_121._m20 * 0.125) * 0.15915493667125701904296875)) / 0.20000000298023223876953125, _179.y);
    float _404 = _345 / _298;
    float _420 = textureLod(_409, _389 * vec2(0.20000000298023223876953125, 0.3183098733425140380859375), 3.0).y + (1.0 - pow(_404, 1.5));
    float _583 = clamp(_420, 0.0, 1.0);
    float _408 = _583;
    _131.w *= pow(_408, _404 * 25.0);
    vec4 _439 = _131;
    vec3 _441 = _439.xyz * (1.0 + (pow(_404, 3.0) * (25.0 * _111._m5)));
    _131.x = _441.x;
    _131.y = _441.y;
    _131.z = _441.z;
    bool _449 = _111._m7 != 0.0;
    if (_449)
    {
        vec4 _458 = _131;
        vec3 _460 = _458.xyz * 0.0199999995529651641845703125;
        _131.x = _460.x;
        _131.y = _460.y;
        _131.z = _460.z;
    }
    vec4 _467 = _131;
    vec3 _471 = clamp(_467.xyz, vec3(0.0), vec3(1.0));
    _131.x = _471.x;
    _131.y = _471.y;
    _131.z = _471.z;
    vec2 _478 = gl_FragCoord.xy * _484._m0.zw;
    float _490 = 1.0 / gl_FragCoord.w;
    float _506 = max(textureLod(_499, _478, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _587 = 1.0 / _506;
    float _495 = _121._m24 * _587;
    float _512 = _495 - _490;
    float _591 = clamp(_512, 0.0, 1.0);
    _131.w *= _591;
    _519 = vec4(_131.xyz * _131.w, _131.w);
    float _536 = 1.0 / gl_FragCoord.w;
    float _537 = 256.0;
    float _595 = log(_536 * 20.0) * (_537 * 0.079292468726634979248046875);
    float _605 = max(_595, 0.0);
    float _596 = _605;
    _531 = vec4(_596 * _131.w, _131.w * 1000.0, 0.0, _131.w);
}

