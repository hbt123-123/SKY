#version 450
#if defined(GL_AMD_gpu_shader_half_float)
#extension GL_AMD_gpu_shader_half_float : require
#elif defined(GL_EXT_shader_explicit_arithmetic_types_float16)
#extension GL_EXT_shader_explicit_arithmetic_types_float16 : require
#else
#error No extension available for FP16.
#endif
#extension GL_EXT_shader_16bit_storage : require

invariant gl_Position;

struct _72
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

layout(set = 0, binding = 4, std430) restrict readonly buffer _74_76
{
    _72 _m0[];
} _76;

layout(set = 0, binding = 0, std140) uniform _103_105
{
    float _m0;
    float _m1;
    uint _m2;
    float _m3;
    int _m4;
    vec4 _m5[8];
} _105;

layout(set = 0, binding = 2, std140) uniform _191_193
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
} _193;

layout(location = 0) flat out int _222;
layout(location = 1) flat out float _224;
layout(location = 2) flat out int _226;

void main()
{
    do
    {
        int _62 = gl_VertexIndex;
        uint _80 = _76._m0[_62]._m4;
        vec2 _253 = unpackHalf2x16(_80);
        f16vec2 _259 = f16vec2(_253);
        f16vec2 _254 = _259;
        f16vec2 _67 = _254;
        float _85 = float(_67.x);
        bool _93 = false;
        bool _95 = false;
        if (_85 < 0.0)
        {
            if (_105._m2 != 0u)
            {
                _93 = true;
            }
            else
            {
                vec3 _115 = vec3(_76._m0[_62]._m0[0], _76._m0[_62]._m0[1], _76._m0[_62]._m0[2]);
                vec3 _127 = vec3(_76._m0[_62]._m1[0], _76._m0[_62]._m1[1], _76._m0[_62]._m1[2]);
                for (int _138 = 0; _138 < _105._m4; _138++)
                {
                    float _149 = _105._m5[_138].w;
                    vec3 _155 = _105._m5[_138].xyz;
                    vec3 _162 = _115;
                    vec3 _164 = _155;
                    vec3 _263 = _162 - _164;
                    float _264 = dot(_263, _263);
                    float _161 = _264;
                    vec3 _168 = _127;
                    vec3 _170 = _155;
                    vec3 _272 = _168 - _170;
                    float _273 = dot(_272, _272);
                    float _167 = _273;
                    if ((_161 < _149) || (_167 < _149))
                    {
                        _93 = true;
                        _95 = _167 < _161;
                        break;
                    }
                }
            }
        }
        float _188 = _193._m20 - _105._m0;
        float _205;
        if (_105._m2 != 0u)
        {
            _205 = max(_188, (_188 + (-_85)) - _105._m3);
        }
        else
        {
            _205 = _188 + _105._m1;
        }
        _222 = _62;
        _224 = _205;
        _226 = int(_95);
        if (!_93)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        gl_Position = vec4(0.0, 0.0, 1.0, 1.0);
        float _241 = 1.0;
        gl_PointSize = _241;
        break;
    } while(false);
}

