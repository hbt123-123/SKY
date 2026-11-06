#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _96_98
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
} _98;

layout(set = 0, binding = 0, std140) uniform _128_130
{
    mat4 _m0;
    float _m1;
    float _m2;
    float _m3;
} _130;

layout(set = 0, binding = 3) uniform samplerCube _83;

layout(location = 0) in vec3 _112;
layout(location = 2) in vec3 _115;
layout(location = 0) out vec3 _190;
layout(location = 1) out vec4 _226;
layout(location = 1) in vec4 _228;
layout(location = 3) out vec3 _230;
layout(location = 6) out vec3 _245;
layout(location = 7) out vec3 _253;
layout(location = 4) out vec4 _259;
layout(location = 3) in vec4 _260;
layout(location = 5) out vec4 _262;
layout(location = 4) in vec4 _263;
layout(location = 2) out vec4 _265;

void main()
{
    vec3 _110 = _112;
    vec3 _114 = _115;
    _110 += (((_114 * sin(((_110.x + _110.y) + _110.z) + ((_130._m2 * 3.1415927410125732421875) * 1.5))) * 0.014999999664723873138427734375) * _130._m3);
    _110 += (((_114 * sin((((_110.x * 0.730000019073486328125) - (_110.y * 0.5)) - (_110.z * 1.2599999904632568359375)) + ((_130._m2 * 3.1415927410125732421875) * 4.190000057220458984375))) * 0.014999999664723873138427734375) * _130._m3);
    vec3 _178 = (_130._m0 * vec4(_110, 1.0)).xyz;
    mat4 _191 = _130._m0;
    vec3 _194 = _114;
    mat4 _304 = _191;
    mat3 _313 = mat3(vec3(cross(_304[1].xyz, _304[2].xyz)), vec3(cross(_304[2].xyz, _304[0].xyz)), vec3(cross(_304[0].xyz, _304[1].xyz)));
    vec3 _305 = normalize(_313 * _194);
    _190 = _305;
    vec3 _197 = _178;
    if (_130._m1 != 0.0)
    {
        _197.y = _98._m96 - _197.y;
    }
    vec4 _222 = vec4(_197, 1.0);
    vec4 _223 = _98._m8 * _222;
    gl_Position = _223;
    _226 = _228;
    _230 = _98._m17 - _178;
    vec3 _237 = normalize(_230);
    vec3 _240 = reflect(-_237, _190);
    vec3 _248 = _190;
    float _250 = 5.0;
    vec4 _349 = textureLod(_83, _248, _250);
    vec3 _350 = (_349.xyz * _349.xyz) * (_98._m43 / _349.w);
    _245 = vec3(1.0) / _350;
    vec3 _254 = _240;
    float _256 = 5.0;
    vec4 _367 = textureLod(_83, _254, _256);
    vec3 _368 = (_367.xyz * _367.xyz) * (_98._m43 / _367.w);
    _253 = vec3(1.0) / _368;
    _259 = _260;
    _262 = _263;
    vec3 _276 = mix(_98._m51, _98._m47, vec3(0.25)) * 0.100000001490116119384765625;
    _265.x = _276.x;
    _265.y = _276.y;
    _265.z = _276.z;
    _265.w = 1.0;
}

