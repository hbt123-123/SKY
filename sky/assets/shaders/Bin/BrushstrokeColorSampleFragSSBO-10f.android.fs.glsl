#version 450

struct _34
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

layout(set = 1, binding = 5, std430) restrict buffer _36_38
{
    _34 _m0[];
} _38;

layout(location = 1) flat in vec4 _28;
layout(location = 0) flat in uint _42;
layout(location = 0) out vec4 _51;

void main()
{
    vec4 _26 = _28;
    vec4 _45 = _26;
    vec4 _57 = _45;
    uint _63 = packUnorm4x8(_57);
    uint _59 = _63;
    _38._m0[_42]._m7 = _59;
    _51 = vec4(0.0);
}

