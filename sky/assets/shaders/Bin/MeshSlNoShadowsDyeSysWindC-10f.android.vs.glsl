#version 450

invariant gl_Position;

layout(set = 0, binding = 2, std140) uniform _104_106
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
} _106;

layout(set = 0, binding = 0, std140) uniform _126_128
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
} _128;

layout(set = 0, binding = 3) uniform samplerCube _91;

layout(location = 0) in vec3 _120;
layout(location = 2) in vec3 _123;
layout(location = 1) in vec4 _233;
layout(location = 0) out vec3 _241;
layout(location = 1) out vec4 _275;
layout(location = 3) out vec3 _277;
layout(location = 6) out vec3 _290;
layout(location = 7) out vec3 _298;
layout(location = 4) out vec4 _304;
layout(location = 3) in vec4 _305;
layout(location = 5) out vec4 _307;
layout(location = 4) in vec4 _308;
layout(location = 2) out vec4 _310;

void main()
{
    vec3 _118 = _120;
    vec3 _122 = _123;
    vec3 _125 = (_128._m0 * vec4(_118, 1.0)).xyz;
    vec3 _139 = cross(_128._m6, vec3(0.0, 1.0, 0.0));
    vec3 _146 = mix(_125, _118, vec3(_128._m7));
    vec3 _154 = _106._m17 - _125;
    float _160 = dot(_154, _154);
    float _164 = _128._m8 * _128._m8;
    float _171 = _128._m9 * _128._m9;
    float _178 = _171 - _164;
    float _186;
    if (_178 > 0.0)
    {
        float _194 = (_160 - _164) / _178;
        float _349 = clamp(_194, 0.0, 1.0);
        _186 = _349;
    }
    else
    {
        _186 = 1.0;
    }
    float _182 = _186;
    _125 += ((((_128._m6 * sin((((_106._m20 * 3.1415927410125732421875) * _128._m3) - (_146.y * _128._m4)) + (dot(_139, _146) * _128._m5))) * _128._m2) * _182) * _233.w);
    mat4 _242 = _128._m0;
    vec3 _245 = _122;
    mat4 _353 = _242;
    mat3 _362 = mat3(vec3(cross(_353[1].xyz, _353[2].xyz)), vec3(cross(_353[2].xyz, _353[0].xyz)), vec3(cross(_353[0].xyz, _353[1].xyz)));
    vec3 _354 = normalize(_362 * _245);
    _241 = _354;
    vec3 _248 = _125;
    if (_128._m1 != 0.0)
    {
        _248.y = _106._m96 - _248.y;
    }
    vec4 _271 = vec4(_248, 1.0);
    vec4 _272 = _106._m8 * _271;
    gl_Position = _272;
    _275 = _233;
    _277 = _106._m17 - _125;
    vec3 _282 = normalize(_277);
    vec3 _285 = reflect(-_282, _241);
    vec3 _293 = _241;
    float _295 = 5.0;
    vec4 _398 = textureLod(_91, _293, _295);
    vec3 _399 = (_398.xyz * _398.xyz) * (_106._m43 / _398.w);
    _290 = vec3(1.0) / _399;
    vec3 _299 = _285;
    float _301 = 5.0;
    vec4 _416 = textureLod(_91, _299, _301);
    vec3 _417 = (_416.xyz * _416.xyz) * (_106._m43 / _416.w);
    _298 = vec3(1.0) / _417;
    _304 = _305;
    _307 = _308;
    vec3 _321 = mix(_106._m51, _106._m47, vec3(0.25)) * 0.100000001490116119384765625;
    _310.x = _321.x;
    _310.y = _321.y;
    _310.z = _321.z;
    _310.w = 1.0;
}

