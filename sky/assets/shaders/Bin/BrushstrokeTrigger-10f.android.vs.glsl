#version 450

struct _54
{
    float _m0[3];
    float _m1[3];
    uint _m2;
    uint _m3[3];
    uint _m4;
    uint _m5;
    uint _m6;
    uint _m7;
};

layout(set = 0, binding = 4, std430) restrict buffer _56_58
{
    _54 _m0[];
} _58;

layout(set = 0, binding = 0, std140) uniform _85_87
{
    float _m0;
    float _m1;
    uint _m2;
    float _m3;
    int _m4;
    vec4 _m5[8];
} _87;

layout(set = 0, binding = 2, std140) uniform _172_174
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
} _174;

void main()
{
    int _45 = gl_VertexIndex;
    uint _62 = _58._m0[_45]._m4;
    vec2 _229 = unpackHalf2x16(_62);
    vec2 _49 = _229;
    float _68 = _49.x;
    bool _74 = false;
    bool _76 = false;
    if (_68 < 0.0)
    {
        if (_87._m2 != 0u)
        {
            _74 = true;
        }
        else
        {
            vec3 _96 = vec3(_58._m0[_45]._m0[0], _58._m0[_45]._m0[1], _58._m0[_45]._m0[2]);
            vec3 _109 = vec3(_58._m0[_45]._m1[0], _58._m0[_45]._m1[1], _58._m0[_45]._m1[2]);
            for (int _120 = 0; _120 < _87._m4; _120++)
            {
                float _131 = _87._m5[_120].w;
                vec3 _136 = _87._m5[_120].xyz;
                vec3 _143 = _96;
                vec3 _145 = _136;
                vec3 _233 = _143 - _145;
                float _234 = dot(_233, _233);
                float _142 = _234;
                vec3 _149 = _109;
                vec3 _151 = _136;
                vec3 _242 = _149 - _151;
                float _243 = dot(_242, _242);
                float _148 = _243;
                if ((_142 < _131) || (_148 < _131))
                {
                    _74 = true;
                    _76 = _148 < _142;
                    break;
                }
            }
        }
    }
    float _169 = _174._m20 - _87._m0;
    float _186;
    if (_87._m2 != 0u)
    {
        _186 = max(_169, (_169 + (-_68)) - _87._m3);
    }
    else
    {
        _186 = _169 + _87._m1;
    }
    if (_74)
    {
        float _208;
        if (_76)
        {
            _208 = -_49.y;
        }
        else
        {
            _208 = _49.y;
        }
        vec2 _220 = vec2(_186, _208);
        uint _251 = packHalf2x16(_220);
        _58._m0[_45]._m4 = _251;
    }
}

