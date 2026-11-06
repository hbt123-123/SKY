#version 450

layout(set = 1, binding = 2, std140) uniform _83_85
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
} _85;

layout(set = 1, binding = 0, std140) uniform _157_159
{
    float _m0;
} _159;

layout(set = 1, binding = 4) uniform mediump sampler2D _74;
layout(set = 1, binding = 3) uniform mediump sampler2D _175;
layout(set = 1, binding = 5) uniform mediump sampler2D _181;

layout(location = 0) in vec2 _78;
layout(location = 0) out vec4 _170;

void main()
{
    do
    {
        vec4 _144 = textureLod(_74, _78, 0.0);
        bool _153 = _85._m26 != 0u;
        bool _166;
        if (!_153)
        {
            _166 = _159._m0 > 0.5;
        }
        else
        {
            _166 = _153;
        }
        if (_166)
        {
            _170 = _144;
            break;
        }
        vec2 _174 = textureLod(_175, _78, 0.0).xy;
        vec4 _180 = textureLod(_181, _78 - vec2(_174), 0.0);
        vec3 _192 = _144.xyz;
        vec3 _252 = textureLod(_74, _78 + _85._m15.xy, 0.0).xyz;
        vec3 _253 = textureLod(_74, _78 + _85._m15.zw, 0.0).xyz;
        vec3 _254 = textureLod(_74, _78 + _85._m16.xy, 0.0).xyz;
        vec3 _255 = textureLod(_74, _78 + _85._m16.zw, 0.0).xyz;
        vec3 _195 = max(_192, max(_252, max(_253, max(_254, _255))));
        vec3 _196 = ((((_252 + _253) + _254) + _255) + _192) * 0.20000000298023223876953125;
        vec3 _190 = _195;
        vec3 _191 = _196;
        vec3 _200 = _180.xyz;
        vec3 _203 = _191;
        vec3 _205 = _190;
        vec3 _308 = _200 - _203;
        vec3 _309 = _205 - _203;
        vec3 _310 = _309 / max(abs(_308), vec3(9.9999997473787516355514526367188e-05));
        float _312 = min(_310.x, min(_310.y, _310.z));
        float _340 = clamp(_312, 0.0, 1.0);
        float _311 = _340;
        vec3 _313 = _203 + (_308 * _311);
        _180.x = _313.x;
        _180.y = _313.y;
        _180.z = _313.z;
        vec4 _214 = _144;
        float _219 = 0.89999997615814208984375;
        float _344 = clamp(_219, 0.0, 1.0);
        vec3 _222 = mix(_214.xyz, _180.xyz, vec3(_344));
        _144.x = _222.x;
        _144.y = _222.y;
        _144.z = _222.z;
        _170 = _144;
        if (isnan(_170.x))
        {
            _170.x = 0.0;
            _170.z = 0.0;
        }
        break;
    } while(false);
}

