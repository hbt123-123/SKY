#version 450

layout(set = 1, binding = 2, std140) uniform _118_120
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
} _120;

layout(set = 1, binding = 0, std140) uniform _179_181
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
} _181;

layout(set = 1, binding = 1, std140) uniform _471_473
{
    vec4 _m0;
    vec2 _m1;
} _473;

layout(set = 1, binding = 6) uniform mediump sampler2D _93;
layout(set = 1, binding = 3) uniform mediump sampler2D _351;
layout(set = 1, binding = 4) uniform mediump sampler2D _398;
layout(set = 1, binding = 5) uniform sampler2D _488;

layout(location = 0) in vec4 _77;
layout(location = 1) in vec3 _86;
layout(location = 0) out vec4 _508;
layout(location = 1) out vec4 _520;

void main()
{
    vec2 _74 = _77.xy;
    vec2 _80 = _77.zw;
    vec2 _83 = _86.xy;
    float _89 = texture(_93, _80).w;
    _83 *= ((_89 - 0.5) * 2.0);
    _83 = vec2(0.0);
    vec4 _109 = texture(_93, _80 - _83);
    _109.w = 1.0;
    vec4 _129 = _109;
    vec3 _131 = _129.xyz * (sqrt(_120._m55.w) * 0.785398185253143310546875);
    _109.x = _131.x;
    _109.y = _131.y;
    _109.z = _131.z;
    vec2 _139 = (_74 * 2.0) - vec2(1.0);
    vec2 _165 = _139;
    float _556 = sqrt(dot(_165, _165));
    float _557 = atan(_165.y, _165.x);
    vec2 _558 = vec2(_556, _557);
    vec2 _164 = _558;
    float _168 = fract(((_164.y + 3.1415927410125732421875) * 0.15915493667125701904296875) + 0.25);
    float _185 = 0.0;
    for (int _187 = 0; _187 < 3; _187++)
    {
        float _198 = 3.0;
        float _200 = 0.87999999523162841796875;
        float _202 = 31.5;
        switch (_187)
        {
            case 0:
            {
                _198 *= 1.0;
                _200 *= 0.20000000298023223876953125;
                _202 *= 1.0;
                break;
            }
            case 1:
            {
                _198 *= 2.2558200359344482421875;
                _200 *= 0.100000001490116119384765625;
                _202 *= 1.2558200359344482421875;
                break;
            }
            case 2:
            {
                _198 *= 5.350180149078369140625;
                _200 *= 0.0500000007450580596923828125;
                _202 *= 2.3501799106597900390625;
                break;
            }
        }
        float _238 = (0.5 + (sin((_168 * _202) + (((-(_120._m20 + _181._m6)) * _198) * 0.5)) * 0.5)) * _200;
        _185 += _238;
    }
    float _264 = 1.0 - _185;
    float _267 = pow(0.5 + (sin(((_168 + 0.25) * 3.1415927410125732421875) * 2.0) * 0.5), 10.0);
    float _277 = pow(0.5 + (sin(((_168 - 0.25) * 3.1415927410125732421875) * 2.0) * 0.5), 30.0);
    float _287 = mix(_264, 1.0, _267);
    _287 = mix(_287, 1.0, _277);
    vec4 _306 = _109;
    vec3 _308 = _306.xyz * max(1.75 + (0.25 * sin(_120._m20 * 2.0)), 1.0);
    _109.x = _308.x;
    _109.y = _308.y;
    _109.z = _308.z;
    vec4 _325 = _109;
    vec3 _327 = _325.xyz * ((_181._m4 * _181._m2) * _181._m3);
    _109.x = _327.x;
    _109.y = _327.y;
    _109.z = _327.z;
    float _334 = dot(_139, _139);
    _164.x += (_120._m20 * 0.100000001490116119384765625);
    _164.y += _334;
    float _350 = texture(_351, _164 * vec2(0.20000000298023223876953125, 0.3183098733425140380859375)).x;
    _350 = pow(_350, 7.0);
    _350 *= _334;
    vec4 _369 = _109;
    vec3 _371 = _369.xyz * (1.0 + (_350 * 50.0));
    _109.x = _371.x;
    _109.y = _371.y;
    _109.z = _371.z;
    vec2 _378 = vec2(fract((_164.x * 0.20000000298023223876953125) + ((_120._m20 * 0.125) * 0.15915493667125701904296875)) / 0.20000000298023223876953125, _164.y);
    float _393 = _334 / _287;
    float _409 = textureLod(_398, _378 * vec2(0.20000000298023223876953125, 0.3183098733425140380859375), 3.0).y + (1.0 - pow(_393, 1.5));
    float _572 = clamp(_409, 0.0, 1.0);
    float _397 = _572;
    _109.w *= pow(_397, _393 * 25.0);
    vec4 _428 = _109;
    vec3 _430 = _428.xyz * (1.0 + (pow(_393, 3.0) * (25.0 * _181._m5)));
    _109.x = _430.x;
    _109.y = _430.y;
    _109.z = _430.z;
    bool _438 = _181._m7 != 0.0;
    if (_438)
    {
        vec4 _447 = _109;
        vec3 _449 = _447.xyz * 0.0199999995529651641845703125;
        _109.x = _449.x;
        _109.y = _449.y;
        _109.z = _449.z;
    }
    vec4 _456 = _109;
    vec3 _460 = clamp(_456.xyz, vec3(0.0), vec3(1.0));
    _109.x = _460.x;
    _109.y = _460.y;
    _109.z = _460.z;
    vec2 _467 = gl_FragCoord.xy * _473._m0.zw;
    float _479 = 1.0 / gl_FragCoord.w;
    float _495 = max(textureLod(_488, _467, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _576 = 1.0 / _495;
    float _484 = _120._m24 * _576;
    float _501 = _484 - _479;
    float _580 = clamp(_501, 0.0, 1.0);
    _109.w *= _580;
    _508 = vec4(_109.xyz * _109.w, _109.w);
    float _525 = 1.0 / gl_FragCoord.w;
    float _526 = 256.0;
    float _584 = log(_525 * 20.0) * (_526 * 0.079292468726634979248046875);
    float _594 = max(_584, 0.0);
    float _585 = _594;
    _520 = vec4(_585 * _109.w, _109.w * 1000.0, 0.0, _109.w);
}

