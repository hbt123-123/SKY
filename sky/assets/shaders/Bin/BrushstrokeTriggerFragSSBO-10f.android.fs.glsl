#version 450

struct _32
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

layout(set = 1, binding = 4, std430) restrict buffer _34_36
{
    _32 _m0[];
} _36;

layout(location = 0) flat in int _40;
layout(location = 1) flat in float _50;
layout(location = 2) flat in int _52;
layout(location = 0) out vec4 _75;

void main()
{
    uint _43 = _36._m0[_40]._m4;
    vec2 _81 = unpackHalf2x16(_43);
    vec2 _27 = _81;
    float _58;
    if (_52 != int(0u))
    {
        _58 = -_27.y;
    }
    else
    {
        _58 = _27.y;
    }
    vec2 _70 = vec2(_50, _58);
    uint _85 = packHalf2x16(_70);
    _36._m0[_40]._m4 = _85;
    _75 = vec4(0.0);
}

