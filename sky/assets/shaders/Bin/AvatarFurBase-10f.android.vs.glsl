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
    float _m8;
} _270;

layout(set = 0, binding = 3) uniform mediump sampler2D _288;

layout(location = 0) in vec4 _275;
layout(location = 1) out vec3 _279;
layout(location = 2) in vec3 _281;
layout(location = 1) in vec4 _289;
layout(location = 0) out vec3 _335;
layout(location = 2) out vec3 _338;
layout(location = 5) out vec4 _348;
layout(location = 3) out vec4 _350;
layout(location = 3) in vec4 _351;
layout(location = 4) out vec4 _353;
layout(location = 4) in vec4 _354;
layout(location = 7) out vec4 _397;
layout(location = 6) out vec4 _464;
layout(location = 8) out float _512;
layout(location = 9) out float _531;

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
    if (_270._m8 != 0.0)
    {
        _310.y = _117._m96 - _267.y;
    }
    vec4 _332 = _117._m8 * _310;
    gl_Position = _332;
    _335 = _267.xyz;
    _338 = _117._m17 - _267.xyz;
    vec3 _345 = normalize(_338);
    _348 = _289;
    _350 = _351;
    _353 = _354;
    vec3 _356 = clamp(_348.xzy, vec3(0.00999999977648258209228515625), vec3(0.9900000095367431640625));
    if (_270._m3.w >= 0.0)
    {
        _356 = mix(_356, _270._m3.xyz, vec3(_270._m3.w));
    }
    else
    {
        float _379 = smoothstep(0.7070000171661376953125, 0.0, -_279.y) * abs(_270._m3.w);
        _356.x = mix(_356.x, _270._m3.x, _379);
    }
    vec3 _402 = log2(_356) * (-4.0);
    vec3 _634 = max(_402, vec3(0.0));
    _397.x = _634.x;
    _397.y = _634.y;
    _397.z = _634.z;
    _397.y = -sqrt(1.25 * _397.y);
    _397.w = exp2((-1.6875) * _397.x);
    _397.x = -sqrt(4.0 * _397.x);
    vec3 _430 = _270._m2.xyz - _270._m1.xyz;
    float _438 = max(dot(_430, _430), 9.9999997473787516355514526367188e-05);
    float _444 = dot(_267.xyz - _270._m1.xyz, _430) / _438;
    float _460 = _444;
    float _638 = clamp(_460, 0.0, 1.0);
    float _455 = mix(_270._m1.w, _270._m2.w, _638);
    _464.w = 2.0 * _455;
    vec3 _468 = _279;
    vec4 _642 = vec4(0.2820948064327239990234375, _468 * 0.3257350027561187744140625);
    vec4 _643 = vec4(0.078847892582416534423828125 * dot(vec3(-1.0, -1.0, 2.0), _468 * _468), (_468.yzx * 0.2731371223926544189453125) * _468.zxy);
    float _644 = 0.13656856119632720947265625 * ((_468.x * _468.x) - (_468.y * _468.y));
    vec3 _645;
    _645.x = (dot(_117._m71, _642) + dot(_117._m72, _643)) + (_117._m77.x * _644);
    _645.y = (dot(_117._m73, _642) + dot(_117._m74, _643)) + (_117._m77.y * _644);
    _645.z = (dot(_117._m75, _642) + dot(_117._m76, _643)) + (_117._m77.z * _644);
    vec3 _646 = max(vec3(0.001000000047497451305389404296875), _645);
    _464.x = _646.x;
    _464.y = _646.y;
    _464.z = _646.z;
    vec3 _477 = _279 - (_345 * dot(_279, _345));
    vec3 _485 = _270._m4 + (_477 * 0.100000001490116119384765625);
    vec3 _493 = _267.xyz - _485;
    float _498 = length(_493) * 0.60000002384185791015625;
    float _503 = length(_493 - (_345 * dot(_345, _493)));
    _512 = smoothstep(0.449999988079071044921875, 0.02999999932944774627685546875, 0.5 * (_498 + _503));
    _512 *= _512;
    _512 *= _512;
    _512 *= _270._m5;
    _531 = 0.0;
}

