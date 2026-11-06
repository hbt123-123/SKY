#version 450

const vec3 _357[3] = vec3[](vec3(0.643999993801116943359375, 0.76800000667572021484375, 0.17499999701976776123046875), vec3(0.370999991893768310546875, 0.41299998760223388671875, 0.680000007152557373046875), vec3(0.65799999237060546875, 0.287000000476837158203125, 0.4289999902248382568359375));

layout(set = 1, binding = 1, std140) uniform _123_125
{
    vec4 _m0;
    vec2 _m1;
} _125;

layout(set = 1, binding = 2, std140) uniform _135_137
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
} _137;

layout(set = 1, binding = 0, std140) uniform _240_242
{
    mat4 _m0;
    vec4 _m1;
    vec4 _m2;
    float _m3;
    float _m4;
} _242;

layout(set = 1, binding = 3) uniform sampler2D _376;

layout(location = 0) in vec3 _378;
layout(location = 0) out vec4 _482;
layout(location = 1) out vec4 _491;

void main()
{
    vec3 _382 = _378;
    mat4 _386 = _242._m0;
    vec2 _521 = gl_FragCoord.xy * _125._m0.zw;
    float _522 = max(textureLod(_376, _521, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _571 = 1.0 / _522;
    float _390 = _137._m24 * _571;
    vec3 _523 = normalize(_382 - _137._m17);
    vec3 _524 = normalize(-_137._m12[2].xyz);
    vec3 _384 = _137._m17 + ((_523 * _390) / vec3(dot(_523, _524)));
    vec3 _385 = (_386 * vec4(_384, 1.0)).xyz * 2.0;
    vec3 _380 = _385;
    float _381 = _390;
    float _395 = length(_380.xz);
    float _399 = 0.5 + ((0.5 * sin(_137._m20 * 1.2999999523162841796875)) * sin((_137._m20 * 2.4700000286102294921875) + 1.5299999713897705078125));
    vec3 _415 = _242._m1.xyz * (10.0 - (5.0 * _399));
    float _428 = 0.60000002384185791015625;
    _428 += (0.4000000059604644775390625 * smoothstep(0.0, 1.0, 1.0 - (0.800000011920928955078125 * _395)));
    _428 *= (_242._m1.w * (_137._m23 * 8.0));
    vec3 _450 = _380;
    float _452 = _242._m4;
    float _576 = (1.0 - abs(_450.y)) / clamp(_452, 0.00999999977648258209228515625, 1.0);
    float _589 = clamp(_576, 0.0, 1.0);
    float _575 = _589;
    float _577 = smoothstep(0.0, 1.0, _575);
    _428 *= _577;
    vec2 _460 = _380.xz;
    float _463 = _242._m2.x;
    float _466 = _242._m3;
    float _593 = _137._m20 * _242._m2.y;
    float _594 = cos(_593);
    float _595 = sin(_593);
    mat2 _596 = mat2(vec2(_594, -_595), vec2(_595, _594));
    float _597 = 0.0;
    float _598 = 3.0;
    float _599 = 3.0;
    float _600 = 0.0;
    float _601 = 2.0;
    vec3 _470 = vec3(0.0);
    float _602 = 3.0;
    float _603 = 1.0;
    for (float _604 = 0.0; _604 < _242._m2.z; _604 += 1.0)
    {
        if (_604 >= _598)
        {
            _603 += 1.0;
            _600 += _599;
            _599 += _601;
            _598 += _599;
        }
        float _605 = mod(_604 - _600, _599);
        float _607 = _599 * 564.158935546875;
        float _706 = fract(_607 * 443.897491455078125);
        _706 += ((_706 * (_706 + 19.1900005340576171875)) * 3.0);
        float _707 = fract((_706 + _706) * _706);
        float _608 = _605;
        float _609 = _599;
        float _610 = _707;
        float _725 = ((_608 / _609) * 6.283185482025146484375) + _610;
        float _726 = cos(_725);
        float _727 = sin(_725);
        vec2 _728 = vec2(_726, _727);
        vec2 _606 = (_596 * _728) * ((_603 / _602) * (1.0 - (_242._m2.x * 0.5)));
        float _612 = distance(_460, _606);
        float _613 = _463;
        float _614 = _466;
        float _743 = _612 / _613;
        float _744 = max(0.0, 1.0 - pow(_743, 2.0 * _614));
        float _611 = _744;
        _597 += _611;
        _470 += ((_357[int(mod(_604, 3.0))] * _611) * _242._m2.w);
    }
    float _616 = _597;
    vec3 _459 = _470;
    _428 *= _616;
    _415 *= _459;
    float _478 = _428;
    float _755 = clamp(_478, 0.0, 1.0);
    _428 = _755;
    _482 = vec4(_415 * _428, _428);
    float _496 = _381 - 0.100000001490116119384765625;
    float _497 = 256.0;
    float _759 = log(_496 * 20.0) * (_497 * 0.079292468726634979248046875);
    float _769 = max(_759, 0.0);
    float _760 = _769;
    _491 = vec4(_760 * _428, _428 * 1000.0, 0.0, _428);
}

