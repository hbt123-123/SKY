#version 450
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;

layout(set = 0, binding = 0, rgba16f) uniform restrict writeonly mediump image2D _21;
layout(set = 0, binding = 1, rgba16f) uniform restrict writeonly mediump image2D _27;

void main()
{
    ivec2 _9 = ivec2(gl_GlobalInvocationID.xy);
    imageStore(_21, _9, vec4(0.0));
    imageStore(_27, _9, vec4(0.0));
}

