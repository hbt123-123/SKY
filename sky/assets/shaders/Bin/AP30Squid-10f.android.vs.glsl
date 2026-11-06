#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _103_105
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
} _105;

layout(set = 0, binding = 0, std140) uniform _320_322
{
    mat4 _m0;
    float _m1;
} _322;

layout(set = 0, binding = 3) uniform samplerCube _90;

layout(location = 0) in vec3 _296;
layout(location = 2) in vec3 _299;
layout(location = 1) in vec4 _303;
layout(location = 4) in vec4 _307;
layout(location = 0) out vec3 _334;
layout(location = 1) out vec4 _369;
layout(location = 3) out vec3 _373;
layout(location = 6) out vec3 _388;
layout(location = 7) out vec3 _396;
layout(location = 4) out vec4 _402;
layout(location = 3) in vec4 _403;
layout(location = 5) out vec4 _405;
layout(location = 2) out vec4 _407;

void main()
{
    vec3 _294 = _296;
    vec3 _298 = _299;
    vec3 _310 = _294;
    float _312 = _105._m20;
    float _315 = _303.w;
    float _316 = _307.w;
    float _442 = 2.5;
    float _443 = smoothstep(0.0, 1.0, _316);
    float _444 = _315 * 6.283185482025146484375;
    vec3 _445 = vec3(cos(_444), 0.0, -sin(_444));
    _445 = normalize(_445);
    vec3 _446 = ((_445 * ((sin((_312 * 2.0) + ((1.0 - _443) * 3.0)) * 0.5) + 0.300000011920928955078125)) * _442) * _443;
    float _447 = 2.5;
    float _448 = 1.0;
    float _449 = 0.300000011920928955078125;
    float _450 = 1.0;
    float _451 = 0.89999997615814208984375;
    float _452 = 0.5;
    float _453 = 1.0;
    float _454 = 1.0;
    float _455 = (_443 * 0.25) + (smoothstep(-3.0, 4.0, _310.y) * 0.20000000298023223876953125);
    float _456 = fract((_312 * _448) - _455);
    float _457 = 1.0 - _451;
    float _459;
    if (_456 < _457)
    {
        float _458 = _456 / _457;
        _459 = 1.0 - pow(_458, 0.75);
    }
    else
    {
        float _460 = (_456 - _457) / _451;
        _459 = smoothstep(0.0, 1.0, _460);
    }
    float _461 = (1.0 - _459) * _449;
    float _462 = _459 * _450;
    float _463 = (_462 - _461) * _443;
    vec3 _464 = (_445 * _463) * _447;
    float _465 = (_459 - 0.5) * 2.0;
    float _466 = (((-_465) * _452) * smoothstep(-3.0, 4.0, _310.y)) * 0.5;
    _464.y += _466;
    float _467 = _465 * _453;
    vec3 _468 = (vec3(normalize(vec3(_310.x, 0.0, _310.z))) * (smoothstep(-2.2000000476837158203125, 2.2000000476837158203125, _310.y) * smoothstep(2.2000000476837158203125, -2.2000000476837158203125, _310.y))) * _467;
    _464 += _468;
    _310 += vec3(mix(_446, _464, vec3(_454)));
    _294 = _310;
    vec3 _319 = (_322._m0 * vec4(_294, 1.0)).xyz;
    mat4 _335 = _322._m0;
    vec3 _338 = _298;
    mat4 _602 = _335;
    mat3 _611 = mat3(vec3(cross(_602[1].xyz, _602[2].xyz)), vec3(cross(_602[2].xyz, _602[0].xyz)), vec3(cross(_602[0].xyz, _602[1].xyz)));
    vec3 _603 = normalize(_611 * _338);
    _334 = _603;
    vec3 _341 = _319;
    if (_322._m1 != 0.0)
    {
        _341.y = _105._m96 - _341.y;
    }
    vec4 _365 = vec4(_341, 1.0);
    vec4 _366 = _105._m8 * _365;
    gl_Position = _366;
    _369 = _303;
    _369.w = 1.0;
    _373 = _105._m17 - _319;
    vec3 _380 = normalize(_373);
    vec3 _383 = reflect(-_380, _334);
    vec3 _391 = _334;
    float _393 = 5.0;
    vec4 _647 = textureLod(_90, _391, _393);
    vec3 _648 = (_647.xyz * _647.xyz) * (_105._m43 / _647.w);
    _388 = vec3(1.0) / _648;
    vec3 _397 = _383;
    float _399 = 5.0;
    vec4 _665 = textureLod(_90, _397, _399);
    vec3 _666 = (_665.xyz * _665.xyz) * (_105._m43 / _665.w);
    _396 = vec3(1.0) / _666;
    _402 = _403;
    _405 = _307;
    vec3 _417 = mix(_105._m51, _105._m47, vec3(0.25)) * 0.100000001490116119384765625;
    _407.x = _417.x;
    _407.y = _417.y;
    _407.z = _417.z;
    _407.w = 1.0;
}

