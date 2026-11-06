#version 450

layout(set = 1, binding = 0, std140) uniform _9_11
{
    uint _m0;
} _11;

layout(location = 0) out uint _8;

void main()
{
    _8 = _11._m0;
}

