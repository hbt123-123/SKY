#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _70_72
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
} _72;

layout(set = 0, binding = 1, std140) uniform _274_276
{
    vec4 _m0;
    vec2 _m1;
} _276;

layout(location = 2) in vec4 _29;
layout(location = 1) in vec4 _36;
layout(location = 4) in vec4 _54;
layout(location = 0) out vec2 _65;
layout(location = 0) in vec3 _79;
layout(location = 3) in vec4 _111;
layout(location = 1) out vec4 _147;

void main()
{
    do
    {
        vec4 _27 = _29 * _29;
        vec2 _35 = _36.xy;
        float _39 = _36.z;
        bool _47 = _39 == 0.0;
        vec3 _52 = _54.xyz * 9.19999980926513671875;
        float _58 = 4.0 * _54.w;
        _65 = _35;
        vec3 _67 = normalize(_72._m17 - _79);
        vec3 _83 = -_72._m44;
        float _88 = dot(_67, _83);
        float _92 = 0.0500000007450580596923828125;
        float _102 = -_88;
        float _368 = max(_102, 0.0);
        float _94 = (1.25 * _92) / pow(1.0 - ((1.0 - _92) * pow(_368, 2.0)), 2.0);
        float _110 = _111.w;
        vec3 _116;
        if (_47)
        {
            _116 = _27.xyz;
        }
        else
        {
            _116 = _27.xyz * 16.0;
        }
        vec3 _114 = _116;
        vec3 _127 = (_114 * (_72._m51 + (_72._m47 * _110))) + (_72._m47 * (_94 * _110));
        _147.x = _127.x;
        _147.y = _127.y;
        _147.z = _127.z;
        float _159;
        if (_47)
        {
            _159 = _27.w / max(1.0, (625.0 * _58) * _58);
        }
        else
        {
            _159 = _27.w;
        }
        _147.w = _159;
        vec3 _176 = (_72._m6 * vec4(_79, 1.0)).xyz;
        vec3 _188 = mat3(_72._m6[0].xyz, _72._m6[1].xyz, _72._m6[2].xyz) * _52;
        vec3 _201 = _176 + _188;
        vec2 _205 = (_201.xy / vec2(_201.z)) - (_176.xy / vec2(_176.z));
        float _219 = length(_205);
        vec2 _226;
        if (_219 > 9.9999999747524270787835121154785e-07)
        {
            _226 = (-_205) / vec2(_219);
        }
        else
        {
            _226 = vec2(1.0, 0.0);
        }
        vec2 _222 = _226;
        vec2 _237 = vec2(-_222.y, _222.x);
        float _254 = max((-_176.z) - 0.5, 0.001000000047497451305389404296875) / 2.5;
        float _372 = min(_254, 1.0);
        float _244 = _372;
        _58 /= sqrt(_244);
        _147.w *= (_244 * _244);
        float _267 = ((_58 * _72._m18) * _276._m0.y) / (-_176.z);
        float _285 = max(1.0, 1.0 / _267);
        _58 *= _285;
        _147.w /= _285;
        vec3 _297 = mix(_201, _176, bvec3(_35.x < 0.0)) + vec3(((_222 * _35.x) + (_237 * _35.y)) * _58, 0.0);
        vec4 _331 = vec4(_297, 1.0);
        vec4 _332 = _72._m7 * _331;
        gl_Position = _332;
        if (_147.w < 0.001000000047497451305389404296875)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        break;
    } while(false);
}

