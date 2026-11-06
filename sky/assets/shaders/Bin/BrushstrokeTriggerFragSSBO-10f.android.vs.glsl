#version 450

invariant gl_Position;

struct _59
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

layout(set = 0, binding = 4, std430) restrict readonly buffer _61_63
{
    _59 _m0[];
} _63;

layout(set = 0, binding = 0, std140) uniform _88_90
{
    float _m0;
    float _m1;
    uint _m2;
    float _m3;
    int _m4;
    vec4 _m5[8];
} _90;

layout(set = 0, binding = 2, std140) uniform _174_176
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
} _176;

layout(location = 0) flat out int _205;
layout(location = 1) flat out float _207;
layout(location = 2) flat out int _209;

void main()
{
    do
    {
        int _49 = gl_VertexIndex;
        uint _67 = _63._m0[_49]._m4;
        vec2 _235 = unpackHalf2x16(_67);
        vec2 _54 = _235;
        float _72 = _54.x;
        bool _78 = false;
        bool _80 = false;
        if (_72 < 0.0)
        {
            if (_90._m2 != 0u)
            {
                _78 = true;
            }
            else
            {
                vec3 _99 = vec3(_63._m0[_49]._m0[0], _63._m0[_49]._m0[1], _63._m0[_49]._m0[2]);
                vec3 _111 = vec3(_63._m0[_49]._m1[0], _63._m0[_49]._m1[1], _63._m0[_49]._m1[2]);
                for (int _122 = 0; _122 < _90._m4; _122++)
                {
                    float _133 = _90._m5[_122].w;
                    vec3 _138 = _90._m5[_122].xyz;
                    vec3 _145 = _99;
                    vec3 _147 = _138;
                    vec3 _239 = _145 - _147;
                    float _240 = dot(_239, _239);
                    float _144 = _240;
                    vec3 _151 = _111;
                    vec3 _153 = _138;
                    vec3 _248 = _151 - _153;
                    float _249 = dot(_248, _248);
                    float _150 = _249;
                    if ((_144 < _133) || (_150 < _133))
                    {
                        _78 = true;
                        _80 = _150 < _144;
                        break;
                    }
                }
            }
        }
        float _171 = _176._m20 - _90._m0;
        float _188;
        if (_90._m2 != 0u)
        {
            _188 = max(_171, (_171 + (-_72)) - _90._m3);
        }
        else
        {
            _188 = _171 + _90._m1;
        }
        _205 = _49;
        _207 = _188;
        _209 = int(_80);
        if (!_78)
        {
            gl_Position = vec4(0.0, 0.0, 0.0, -1.0);
            break;
        }
        gl_Position = vec4(0.0, 0.0, 1.0, 1.0);
        float _224 = 1.0;
        gl_PointSize = _224;
        break;
    } while(false);
}

