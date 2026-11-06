#version 450
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;

layout(set = 0, binding = 0) uniform sampler2D _53;
layout(set = 0, binding = 1, r32f) uniform restrict writeonly image2D _75;

void main()
{
    float _8 = 1.0;
    vec2 _12 = vec2(gl_GlobalInvocationID.xy);
    ivec2 _24 = ivec2(_12 * 4.0);
    for (int _30 = 0; _30 < 4; _30++)
    {
        for (int _41 = 0; _41 < 4; _41++)
        {
            float _49 = texelFetch(_53, _24 + ivec2(_41, _30), 0).x;
            _8 = min(_8, _49);
        }
    }
    imageStore(_75, ivec2(_12), vec4(_8));
}

