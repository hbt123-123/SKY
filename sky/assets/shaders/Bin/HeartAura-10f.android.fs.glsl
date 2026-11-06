#version 450

layout(set = 1, binding = 2, std140) uniform _206_208
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
} _208;

layout(location = 0) in vec2 _183;
layout(location = 1) in vec4 _250;
layout(location = 0) out vec4 _257;
layout(location = 1) out vec4 _270;

void main()
{
    vec2 _184 = _183;
    _184 *= vec2(1.2999999523162841796875, 1.2000000476837158203125);
    _184 += vec2(0.0, 0.3499999940395355224609375);
    float _311 = abs(_184.x) + _184.y;
    _184 /= vec2((_311 * 0.5) + 0.5);
    float _312 = (_184.y * 0.60000002384185791015625) + 0.4000000059604644775390625;
    float _314;
    if (_312 < 0.0)
    {
        _314 = 0.0;
    }
    else
    {
        _314 = dot(_184, _184) - 0.810000002384185791015625;
    }
    float _313 = _314;
    float _315 = _313 / max(0.87999999523162841796875 * _312, 0.00999999977648258209228515625);
    float _316 = _315 * 4.5;
    float _357 = min(_316, 1.0);
    float _317 = _357;
    float _181 = _317;
    float _187 = 1.0 - (((_181 - 0.5) * (_181 - 0.5)) / 0.25);
    if (_187 <= 0.001000000047497451305389404296875)
    {
        discard;
    }
    float _202 = _208._m20 * 0.100000001490116119384765625;
    vec2 _222 = _183 + vec2(0.0, 1.0);
    float _223 = _202;
    float _225 = 300.0;
    float _226 = 0.0199999995529651641845703125;
    float _361 = 6.283185482025146484375 / _225;
    float _362 = atan(_222.y, _222.x) + _223;
    float _363 = step(mod(_362, _361), _226 / length(_222));
    float _231 = (_363 * 0.75) + 0.25;
    float _382 = clamp(_231, 0.0, 1.0);
    float _216 = _382;
    float _239 = _181 * _181;
    float _240 = 2.5;
    vec3 _386 = (vec3(-0.25, -0.5, -0.75) + vec3(_239)) * _240;
    vec3 _387 = vec3(1.0) - (_386 * _386);
    vec3 _401 = max(_387, vec3(0.0));
    vec3 _388 = _401;
    vec4 _234 = vec4(_388, _187 * _216);
    _234 *= (_250 * 1.75);
    _257 = vec4(_234.xyz * _234.w, _234.w);
    float _277 = 1.0 / gl_FragCoord.w;
    float _278 = 256.0;
    float _405 = log(_277 * 20.0) * (_278 * 0.079292468726634979248046875);
    float _415 = max(_405, 0.0);
    float _406 = _415;
    _270 = vec4(_406 * _234.w, _234.w * 1000.0, 0.0, _234.w);
}

