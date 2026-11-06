#version 450

layout(set = 1, binding = 1, std140) uniform _88_90
{
    vec4 _m0;
    vec2 _m1;
} _90;

layout(set = 1, binding = 2, std140) uniform _100_102
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
} _102;

layout(set = 1, binding = 0, std140) uniform _179_181
{
    vec4 _m0;
    float _m1;
    float _m2;
    float _m3;
    mat4 _m4;
    vec2 _m5;
    vec2 _m6;
    vec2 _m7;
    vec2 _m8;
    vec2 _m9;
    vec2 _m10;
    vec2 _m11;
    vec2 _m12;
    float _m13;
} _181;

layout(set = 1, binding = 4) uniform sampler2D _174;
layout(set = 1, binding = 3) uniform mediump sampler2D _209;

layout(location = 4) in vec2 _172;
layout(location = 3) in vec3 _176;
layout(location = 0) in vec4 _207;
layout(location = 1) in vec3 _293;
layout(location = 2) in vec3 _301;
layout(location = 0) out vec4 _317;
layout(location = 1) out vec4 _329;

void main()
{
    do
    {
        vec2 _170 = _172;
        vec3 _184 = _176;
        mat4 _188 = _181._m4;
        vec2 _369 = gl_FragCoord.xy * _90._m0.zw;
        float _370 = max(textureLod(_174, _369, 0.0).x, 1.0000000116860974230803549289703e-07);
        float _419 = 1.0 / _370;
        float _192 = _102._m24 * _419;
        vec3 _371 = normalize(_184 - _102._m17);
        vec3 _372 = normalize(-_102._m12[2].xyz);
        vec3 _186 = _102._m17 + ((_371 * _192) / vec3(dot(_371, _372)));
        vec3 _187 = (_188 * vec4(_186, 1.0)).xyz * 2.0;
        vec3 _178 = _187;
        float _183 = _192;
        vec2 _203 = (_178.xz * 0.5) + vec2(0.5);
        vec2 _423 = clamp(_203, vec2(0.0), vec2(1.0));
        _170 = _423;
        vec4 _206 = _207 * texture(_209, _170);
        vec3 _215 = _178;
        float _217 = _181._m13;
        float _430 = (1.0 - abs(_215.y)) / clamp(_217, 0.00999999977648258209228515625, 1.0);
        float _443 = clamp(_430, 0.0, 1.0);
        float _429 = _443;
        float _431 = smoothstep(0.0, 1.0, _429);
        _206.w *= _431;
        vec4 _226 = _206;
        vec3 _228 = vec3(0.0);
        float _230 = dot(_206.xyz, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625));
        bool _242 = _181._m0.x > 9.9999999747524270787835121154785e-07;
        bool _250;
        if (_242)
        {
            _250 = _230 > (1.0 - _181._m0.x);
        }
        else
        {
            _250 = _242;
        }
        if (_250)
        {
            _228 = ((_206.xyz * (_181._m0.y + (_181._m1 * _102._m23))) * ((_230 - 1.0) + _181._m0.x)) / vec3(max(_181._m0.x, 9.9999999747524270787835121154785e-07));
        }
        _228 *= (1.0 + _181._m0.z);
        vec4 _284 = _226;
        vec3 _286 = _284.xyz + _228;
        _226.x = _286.x;
        _226.y = _286.y;
        _226.z = _286.z;
        bool _298 = _293.x == (-1000000000.0);
        bool _305;
        if (_298)
        {
            _305 = _301.x == (-1000000000.0);
        }
        else
        {
            _305 = _298;
        }
        if (_305)
        {
            break;
        }
        _226.w *= (1.0 - _181._m2);
        _317 = vec4(_226.xyz * _226.w, _226.w);
        float _334 = _183 - 0.100000001490116119384765625;
        float _335 = 256.0;
        float _447 = log(_334 * 20.0) * (_335 * 0.079292468726634979248046875);
        float _457 = max(_447, 0.0);
        float _448 = _457;
        _329 = vec4(_448 * _226.w, _226.w * 1000.0, 0.0, _226.w);
        break;
    } while(false);
}

