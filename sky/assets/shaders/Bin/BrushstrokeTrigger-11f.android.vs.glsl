#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

struct _77
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

layout(set = 0, binding = 4, std430) restrict buffer _79_81
{
    _77 _m0[];
} _81;

layout(set = 0, binding = 0, std140) uniform _110_112
{
    float _m0;
    float _m1;
    uint _m2;
    float _m3;
    int _m4;
    vec4 _m5[8];
} _112;

layout(set = 0, binding = 2, std140) uniform _199_201
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
} _201;

void main()
{
    int _68 = gl_VertexIndex;
    uint _85 = _81._m0[_68]._m4;
    vec2 _258 = unpackHalf2x16(_85);
    f16vec2 _264 = f16vec2(_258);
    f16vec2 _259 = _264;
    f16vec2 _72 = _259;
    float _91 = float(_72.x);
    bool _99 = false;
    bool _101 = false;
    if (_91 < 0.0)
    {
        if (_112._m2 != 0u)
        {
            _99 = true;
        }
        else
        {
            vec3 _122 = vec3(_81._m0[_68]._m0[0], _81._m0[_68]._m0[1], _81._m0[_68]._m0[2]);
            vec3 _135 = vec3(_81._m0[_68]._m1[0], _81._m0[_68]._m1[1], _81._m0[_68]._m1[2]);
            for (int _146 = 0; _146 < _112._m4; _146++)
            {
                float _157 = _112._m5[_146].w;
                vec3 _163 = _112._m5[_146].xyz;
                vec3 _170 = _122;
                vec3 _172 = _163;
                vec3 _268 = _170 - _172;
                float _269 = dot(_268, _268);
                float _169 = _269;
                vec3 _176 = _135;
                vec3 _178 = _163;
                vec3 _277 = _176 - _178;
                float _278 = dot(_277, _277);
                float _175 = _278;
                if ((_169 < _157) || (_175 < _157))
                {
                    _99 = true;
                    _101 = _175 < _169;
                    break;
                }
            }
        }
    }
    float _196 = _201._m20 - _112._m0;
    float _213;
    if (_112._m2 != 0u)
    {
        _213 = max(_196, (_196 + (-_91)) - _112._m3);
    }
    else
    {
        _213 = _196 + _112._m1;
    }
    if (_99)
    {
        float16_t _236;
        if (_101)
        {
            _236 = -_72.y;
        }
        else
        {
            _236 = _72.y;
        }
        f16vec2 _248 = f16vec2(float16_t(_213), _236);
        f16vec2 _286 = _248;
        vec2 _292 = vec2(_286);
        uint _287 = packHalf2x16(_292);
        _81._m0[_68]._m4 = _287;
    }
}

