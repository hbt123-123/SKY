#version 450

layout(set = 1, binding = 1, std140) uniform _82_84
{
    vec4 _m0;
    vec2 _m1;
} _84;

layout(set = 1, binding = 2, std140) uniform _110_112
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
} _112;

layout(location = 1) in float _72;
layout(location = 0) in vec3 _104;
layout(location = 0) out vec4 _187;

void main()
{
    float _73 = _72;
    vec2 _198 = gl_FragCoord.xy * 0.00999999977648258209228515625;
    vec3 _212 = fract(_198 * 443.897491455078125).xyx;
    _212 += vec3(dot(_212, _212.yzx + vec3(19.1900005340576171875)));
    float _213 = fract((_212.x + _212.y) * _212.z);
    float _197 = _213;
    bool _199 = _197 < _73;
    if (_199)
    {
        discard;
    }
    vec3 _76 = vec3(0.0);
    vec2 _79 = gl_FragCoord.xy * _84._m0.zw;
    float _92 = 0.00019999999494757503271102905273438;
    float _94 = (1.0 / gl_FragCoord.w) - 0.0500000007450580596923828125;
    vec3 _102 = _104;
    vec4 _107 = _112._m10 * vec4(_102 - _76, 1.0);
    _107 /= vec4(_107.w * 2.0);
    vec4 _134 = _107;
    vec2 _136 = _134.xy + vec2(0.5);
    _107.x = _136.x;
    _107.y = _136.y;
    vec4 _145 = _107;
    vec2 _147 = _145.xy + _112._m33.xy;
    _107.x = _147.x;
    _107.y = _147.y;
    vec4 _156 = _107;
    vec2 _158 = _156.xy - _112._m32.xy;
    _107.x = _158.x;
    _107.y = _158.y;
    vec2 _163 = _79 - _107.xy;
    _163 = clamp(_163, vec2(-0.5), vec2(0.5));
    vec2 _172 = _163 * _84._m0.xy;
    _92 += dot(_172 * 0.100000001490116119384765625, _172 * 0.100000001490116119384765625);
    _187 = vec4(_163, _94, _92);
}

