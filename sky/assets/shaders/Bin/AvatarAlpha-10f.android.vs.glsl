#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _115_117
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
} _117;

layout(set = 0, binding = 0, std140) uniform _268_270
{
    mat4 _m0;
    vec4 _m1;
    vec4 _m2;
    vec4 _m3;
    vec3 _m4;
    float _m5;
    float _m6;
    float _m7;
} _270;

layout(set = 0, binding = 3) uniform mediump sampler2D _288;

layout(location = 0) in vec4 _275;
layout(location = 1) out vec3 _279;
layout(location = 2) in vec3 _281;
layout(location = 1) in vec4 _289;
layout(location = 0) out vec3 _336;
layout(location = 2) out vec3 _339;
layout(location = 5) out vec4 _349;
layout(location = 3) out vec4 _351;
layout(location = 3) in vec4 _352;
layout(location = 4) out vec4 _354;
layout(location = 4) in vec4 _355;
layout(location = 7) out vec4 _398;
layout(location = 6) out vec4 _465;
layout(location = 8) out float _513;

void main()
{
    vec4 _267 = _270._m0 * _275;
    mat4 _282 = _270._m0;
    vec3 _285 = _281;
    mat4 _550 = _282;
    mat3 _559 = mat3(vec3(cross(_550[1].xyz, _550[2].xyz)), vec3(cross(_550[2].xyz, _550[0].xyz)), vec3(cross(_550[0].xyz, _550[1].xyz)));
    vec3 _551 = normalize(_559 * _285);
    _279 = _551;
    vec3 _291 = _267.xyz;
    float _294 = _289.w;
    float _299 = _270._m6;
    float _595 = 0.039999999105930328369140625;
    vec2 _596 = fract(((_291.xz * _595) + _117._m68.xz) + vec2(_291.y * 0.0500000007450580596923828125));
    vec4 _597 = textureLod(_288, _596, 0.0);
    vec2 _598 = smoothstep(vec2(0.0), vec2(1.0), _597.xy) - vec2(0.5);
    float _599 = min(0.4000000059604644775390625, 1.0 - _294);
    _599 = pow(_599, 1.7000000476837158203125) * _299;
    vec2 _600 = _598 * _599;
    vec4 _303 = _267;
    vec2 _305 = _303.xz + _600;
    _267.x = _305.x;
    _267.z = _305.y;
    vec4 _310 = _267;
    if (_270._m7 != 0.0)
    {
        _310.y = _117._m96 - _267.y;
    }
    vec4 _333 = _117._m8 * _310;
    gl_Position = _333;
    _336 = _267.xyz;
    _339 = _117._m17 - _267.xyz;
    vec3 _346 = normalize(_339);
    _349 = _289;
    _351 = _352;
    _354 = _355;
    vec3 _357 = clamp(_349.xzy, vec3(0.00999999977648258209228515625), vec3(0.9900000095367431640625));
    if (_270._m3.w >= 0.0)
    {
        _357 = mix(_357, _270._m3.xyz, vec3(_270._m3.w));
    }
    else
    {
        float _380 = smoothstep(0.7070000171661376953125, 0.0, -_279.y) * abs(_270._m3.w);
        _357.x = mix(_357.x, _270._m3.x, _380);
    }
    vec3 _403 = log2(_357) * (-4.0);
    vec3 _634 = max(_403, vec3(0.0));
    _398.x = _634.x;
    _398.y = _634.y;
    _398.z = _634.z;
    _398.y = -sqrt(1.25 * _398.y);
    _398.w = exp2((-1.6875) * _398.x);
    _398.x = -sqrt(4.0 * _398.x);
    vec3 _431 = _270._m2.xyz - _270._m1.xyz;
    float _439 = max(dot(_431, _431), 9.9999997473787516355514526367188e-05);
    float _445 = dot(_267.xyz - _270._m1.xyz, _431) / _439;
    float _461 = _445;
    float _638 = clamp(_461, 0.0, 1.0);
    float _456 = mix(_270._m1.w, _270._m2.w, _638);
    _465.w = 2.0 * _456;
    vec3 _469 = _279;
    vec4 _642 = vec4(0.2820948064327239990234375, _469 * 0.3257350027561187744140625);
    vec4 _643 = vec4(0.078847892582416534423828125 * dot(vec3(-1.0, -1.0, 2.0), _469 * _469), (_469.yzx * 0.2731371223926544189453125) * _469.zxy);
    float _644 = 0.13656856119632720947265625 * ((_469.x * _469.x) - (_469.y * _469.y));
    vec3 _645;
    _645.x = (dot(_117._m71, _642) + dot(_117._m72, _643)) + (_117._m77.x * _644);
    _645.y = (dot(_117._m73, _642) + dot(_117._m74, _643)) + (_117._m77.y * _644);
    _645.z = (dot(_117._m75, _642) + dot(_117._m76, _643)) + (_117._m77.z * _644);
    vec3 _646 = max(vec3(0.001000000047497451305389404296875), _645);
    _465.x = _646.x;
    _465.y = _646.y;
    _465.z = _646.z;
    vec3 _478 = _279 - (_346 * dot(_279, _346));
    vec3 _486 = _270._m4 + (_478 * 0.100000001490116119384765625);
    vec3 _494 = _267.xyz - _486;
    float _499 = length(_494) * 0.60000002384185791015625;
    float _504 = length(_494 - (_346 * dot(_346, _494)));
    _513 = smoothstep(0.449999988079071044921875, 0.02999999932944774627685546875, 0.5 * (_499 + _504));
    _513 *= _513;
    _513 *= _513;
    _513 *= _270._m5;
}

