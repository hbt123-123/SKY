#version 450

layout(set = 1, binding = 1, std140) uniform _40_42
{
    vec4 _m0;
    vec2 _m1;
} _42;

layout(set = 1, binding = 2, std140) uniform _61_63
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
} _63;

layout(set = 1, binding = 0, std140) uniform _144_146
{
    float _m0;
    float _m1;
    vec3 _m2;
    float _m3;
    float _m4;
    vec4 _m5;
    vec3 _m6;
    vec3 _m7;
} _146;

layout(set = 1, binding = 4) uniform sampler2D _71;
layout(set = 1, binding = 3) uniform sampler2D _90;
layout(set = 1, binding = 5) uniform mediump sampler2D _267;

layout(location = 0) in vec3 _173;
layout(location = 0) out float _340;

void main()
{
    vec2 _34 = gl_FragCoord.xy * _42._m0.zw;
    float _50 = 1.0 / gl_FragCoord.w;
    float _84 = max(textureLod(_71, _34 - _63._m32.xy, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _382 = 1.0 / _84;
    float _57 = _63._m24 * _382;
    float _96 = max(textureLod(_90, _34, 0.0).x, 1.0000000116860974230803549289703e-07);
    float _386 = 1.0 / _96;
    float _87 = _63._m24 * _386;
    _57 = min(_57, _87);
    _50 = min(_57, _50);
    vec3 _106 = (_63._m38 + (_63._m34 * (_34.x + _63._m32.x))) + (_63._m36 * (_34.y + _63._m32.y));
    vec3 _132 = _63._m17 + (_106 * _57);
    float _140 = _132.y;
    float _154 = smoothstep(_146._m2.x, _146._m2.y, _140);
    float _390 = clamp(_154, 0.0, 1.0);
    float _143 = _390;
    float _156 = 1.0;
    float _157 = 1.0;
    float _158 = 1.0;
    if (_146._m3 > 0.0)
    {
        vec3 _166 = normalize(_146._m6);
        vec3 _171 = _173 - _146._m7;
        float _179 = dot(_171, _166);
        vec3 _183 = _171 - (_166 * _179);
        float _189 = length(_183);
        vec3 _192 = mix(vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), bvec3(abs(_166.y) < 0.9900000095367431640625));
        vec3 _203 = normalize(cross(_166, _192));
        vec3 _208 = cross(_166, _203);
        float _212 = (atan(dot(_183, _208), dot(_183, _203)) * 0.15915493667125701904296875) + 0.5;
        float _224 = _146._m5.x;
        float _228 = _146._m5.y;
        float _231 = _63._m20 * _146._m5.z;
        vec2 _239 = vec2(_212 * _224, (_179 * _228) - _231);
        vec2 _249 = vec2(((_212 * _224) * 0.5) + 0.37000000476837158203125, ((_179 * _228) * 0.3499999940395355224609375) + (_231 * 0.60000002384185791015625));
        float _266 = texture(_267, _239).x * texture(_267, _249).x;
        float _277 = _266;
        float _394 = max(_277, 0.0);
        _266 = pow(_394, 0.5);
        float _289 = 1.0 - (_189 / max(_146._m5.w, 0.001000000047497451305389404296875));
        float _398 = clamp(_289, 0.0, 1.0);
        float _281 = _398;
        _281 = pow(_281, 3.0);
        _156 = 1.0 + ((_266 * _281) * max(_146._m4, 0.0));
        vec3 _307;
        if (_189 > 9.9999997473787516355514526367188e-05)
        {
            _307 = _183 / vec3(_189);
        }
        else
        {
            _307 = vec3(1.0, 0.0, 0.0);
        }
        vec3 _303 = _307;
        vec3 _316 = normalize(_63._m17 - _173);
        _157 = smoothstep(0.0, 0.20000000298023223876953125, abs(dot(_303, _316)));
        _158 = smoothstep(0.0, 0.1500000059604644775390625, 1.0 - (_50 / _57));
    }
    _143 = mix(1.0, _143, _146._m1);
    _340 = (((_146._m0 * (_50 / _57)) * _143) * (gl_FrontFacing ? 1.0 : (-1.0))) + ((((_146._m0 * _143) * (_156 - 1.0)) * _158) * _157);
}

