#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _113_115
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
} _115;

layout(set = 0, binding = 0, std140) uniform _192_194
{
    mat4 _m0;
    float _m1;
    float _m2;
    float _m3;
    float _m4;
    float _m5;
    vec3 _m6;
    float _m7;
    float _m8;
    float _m9;
} _194;

layout(set = 0, binding = 3) uniform samplerCube _100;

layout(location = 0) in vec3 _186;
layout(location = 2) in vec3 _189;
layout(location = 1) in vec4 _297;
layout(location = 0) out vec3 _305;
layout(location = 1) out vec4 _339;
layout(location = 5) out vec3 _341;
layout(location = 8) out vec3 _354;
layout(location = 9) out vec3 _362;
layout(location = 6) out vec4 _368;
layout(location = 3) in vec4 _369;
layout(location = 7) out vec4 _371;
layout(location = 4) in vec4 _372;
layout(location = 5) in vec4 _374;
layout(location = 6) in vec4 _375;
layout(location = 7) in vec4 _376;
layout(location = 2) out vec4 _377;
layout(location = 3) out vec4 _378;
layout(location = 4) out vec4 _379;

void main()
{
    vec3 _184 = _186;
    vec3 _188 = _189;
    vec3 _191 = (_194._m0 * vec4(_184, 1.0)).xyz;
    vec3 _205 = cross(_194._m6, vec3(0.0, 1.0, 0.0));
    vec3 _211 = mix(_191, _184, vec3(_194._m7));
    vec3 _219 = _115._m17 - _191;
    float _225 = dot(_219, _219);
    float _229 = _194._m8 * _194._m8;
    float _236 = _194._m9 * _194._m9;
    float _243 = _236 - _229;
    float _251;
    if (_243 > 0.0)
    {
        float _259 = (_225 - _229) / _243;
        float _412 = clamp(_259, 0.0, 1.0);
        _251 = _412;
    }
    else
    {
        _251 = 1.0;
    }
    float _247 = _251;
    _191 += ((((_194._m6 * sin((((_115._m20 * 3.1415927410125732421875) * _194._m3) - (_211.y * _194._m4)) + (dot(_205, _211) * _194._m5))) * _194._m2) * _247) * _297.w);
    mat4 _306 = _194._m0;
    vec3 _309 = _188;
    mat4 _416 = _306;
    mat3 _425 = mat3(vec3(cross(_416[1].xyz, _416[2].xyz)), vec3(cross(_416[2].xyz, _416[0].xyz)), vec3(cross(_416[0].xyz, _416[1].xyz)));
    vec3 _417 = normalize(_425 * _309);
    _305 = _417;
    vec3 _312 = _191;
    if (_194._m1 != 0.0)
    {
        _312.y = _115._m96 - _312.y;
    }
    vec4 _335 = vec4(_312, 1.0);
    vec4 _336 = _115._m8 * _335;
    gl_Position = _336;
    _339 = _297;
    _341 = _115._m17 - _191;
    vec3 _346 = normalize(_341);
    vec3 _349 = reflect(-_346, _305);
    vec3 _357 = _305;
    float _359 = 5.0;
    vec4 _461 = textureLod(_100, _357, _359);
    vec3 _462 = (_461.xyz * _461.xyz) * (_115._m43 / _461.w);
    _354 = vec3(1.0) / _462;
    vec3 _363 = _349;
    float _365 = 5.0;
    vec4 _479 = textureLod(_100, _363, _365);
    vec3 _480 = (_479.xyz * _479.xyz) * (_115._m43 / _479.w);
    _362 = vec3(1.0) / _480;
    _368 = _369;
    _371 = _372;
    vec4 _380 = _374;
    vec4 _382 = _375;
    vec4 _384 = _376;
    vec4 _386 = vec4(((_380.xyz * _380.xyz) / vec3(_380.w)) * mix(_115._m51, _115._m47, vec3(_382.x)), _382.w * exp2((255.0 * _382.z) - 128.0));
    vec4 _387 = vec4(_382.y * _382.y, 0.0, 0.0, 0.0);
    vec4 _388 = vec4((_384.xyz * 2.007874011993408203125) - vec3(1.007874011993408203125), _384.w);
    _377 = _386;
    _378 = _387;
    _379 = _388;
}

