#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _136_138
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
} _138;

layout(set = 0, binding = 0, std140) uniform _208_210
{
    mat4 _m0;
    float _m1;
} _210;

layout(location = 0) in vec3 _202;
layout(location = 2) in vec3 _205;
layout(location = 0) out vec3 _222;
layout(location = 1) out vec4 _258;
layout(location = 1) in vec4 _260;
layout(location = 3) out vec3 _262;
layout(location = 4) out vec4 _272;
layout(location = 3) in vec4 _273;
layout(location = 5) out vec4 _275;
layout(location = 4) in vec4 _276;
layout(location = 6) out vec4 _286;
layout(location = 2) out vec4 _323;

void main()
{
    vec3 _200 = _202;
    vec3 _204 = _205;
    vec3 _207 = (_210._m0 * vec4(_200, 1.0)).xyz;
    mat4 _223 = _210._m0;
    vec3 _226 = _204;
    mat4 _359 = _223;
    mat3 _368 = mat3(vec3(cross(_359[1].xyz, _359[2].xyz)), vec3(cross(_359[2].xyz, _359[0].xyz)), vec3(cross(_359[0].xyz, _359[1].xyz)));
    vec3 _360 = normalize(_368 * _226);
    _222 = _360;
    vec3 _229 = _207;
    if (_210._m1 != 0.0)
    {
        _229.y = _138._m96 - _229.y;
    }
    vec4 _254 = vec4(_229, 1.0);
    vec4 _255 = _138._m8 * _254;
    gl_Position = _255;
    _258 = _260;
    _262 = _138._m17 - _207;
    _272 = _273;
    _275 = _276;
    vec3 _278 = clamp(_258.xzy, vec3(0.00999999977648258209228515625), vec3(0.9900000095367431640625));
    vec3 _292 = log2(_278.xzy) * (-4.0);
    vec3 _404 = max(_292, vec3(0.0));
    _286.x = _404.x;
    _286.y = _404.y;
    _286.z = _404.z;
    _286.y = -sqrt(1.25 * _286.y);
    _286.w = exp2((-1.6875) * _286.x);
    _286.x = -sqrt(4.0 * _286.x);
    float _322 = 1.0;
    vec3 _324 = _222;
    vec4 _408 = vec4(0.2820948064327239990234375, _324 * 0.3257350027561187744140625);
    vec4 _409 = vec4(0.078847892582416534423828125 * dot(vec3(-1.0, -1.0, 2.0), _324 * _324), (_324.yzx * 0.2731371223926544189453125) * _324.zxy);
    float _410 = 0.13656856119632720947265625 * ((_324.x * _324.x) - (_324.y * _324.y));
    vec3 _411;
    _411.x = (dot(_138._m71, _408) + dot(_138._m72, _409)) + (_138._m77.x * _410);
    _411.y = (dot(_138._m73, _408) + dot(_138._m74, _409)) + (_138._m77.y * _410);
    _411.z = (dot(_138._m75, _408) + dot(_138._m76, _409)) + (_138._m77.z * _410);
    vec3 _412 = max(vec3(0.001000000047497451305389404296875), _411);
    _323.x = _412.x;
    _323.y = _412.y;
    _323.z = _412.z;
    _323.w = sqrt(_322);
}

