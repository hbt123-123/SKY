#version 450

layout(set = 1, binding = 2, std140) uniform _189_191
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
} _191;

layout(location = 0) in vec2 _165;
layout(location = 1) in vec4 _233;
layout(location = 0) out vec4 _240;
layout(location = 1) out vec4 _253;

void main()
{
    vec2 _166 = _165;
    _166 *= 1.10000002384185791015625;
    _166 += vec2(0.0, 0.3499999940395355224609375);
    float _294 = (_166.y * 0.60000002384185791015625) + 0.4000000059604644775390625;
    float _296;
    if (_294 < 0.0)
    {
        _296 = 0.0;
    }
    else
    {
        _296 = dot(_166, _166) - 0.810000002384185791015625;
    }
    float _295 = _296;
    float _297 = _295 / max(0.87999999523162841796875 * _294, 0.00999999977648258209228515625);
    float _298 = _297;
    float _326 = min(_298, 1.0);
    float _299 = _326;
    float _163 = _299;
    float _169 = 1.0 - (((_163 - 0.5) * (_163 - 0.5)) / 0.25);
    if (_169 <= 0.001000000047497451305389404296875)
    {
        discard;
    }
    float _185 = _191._m20 * 0.100000001490116119384765625;
    vec2 _205 = _165 + vec2(0.0, 1.0);
    float _206 = _185;
    float _208 = 300.0;
    float _209 = 0.0199999995529651641845703125;
    float _330 = 6.283185482025146484375 / _208;
    float _331 = atan(_205.y, _205.x) + _206;
    float _332 = step(mod(_331, _330), _209 / length(_205));
    float _214 = (_332 * 0.75) + 0.25;
    float _351 = clamp(_214, 0.0, 1.0);
    float _199 = _351;
    float _222 = _163 * _163;
    float _223 = 2.5;
    vec3 _355 = (vec3(-0.25, -0.5, -0.75) + vec3(_222)) * _223;
    vec3 _356 = vec3(1.0) - (_355 * _355);
    vec3 _370 = max(_356, vec3(0.0));
    vec3 _357 = _370;
    vec4 _217 = vec4(_357, _169 * _199);
    _217 *= (_233 * 1.75);
    _240 = vec4(_217.xyz * _217.w, _217.w);
    float _260 = 1.0 / gl_FragCoord.w;
    float _261 = 256.0;
    float _374 = log(_260 * 20.0) * (_261 * 0.079292468726634979248046875);
    float _384 = max(_374, 0.0);
    float _375 = _384;
    _253 = vec4(_375 * _217.w, _217.w * 1000.0, 0.0, _217.w);
}

