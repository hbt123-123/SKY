#version 450

layout(set = 1, binding = 3) uniform sampler2D _36;

layout(location = 0) in vec2 _40;
layout(location = 0) out vec4 _82;

void main()
{
    vec4 _32 = textureGatherOffset(_36, _40, ivec2(0));
    vec4 _47 = textureGatherOffset(_36, _40, ivec2(-2, 0));
    vec4 _53 = textureGatherOffset(_36, _40, ivec2(2, 0));
    vec4 _59 = textureGatherOffset(_36, _40, ivec2(0, 2));
    vec4 _64 = textureGatherOffset(_36, _40, ivec2(0, -2));
    vec4 _79 = min(min(min(_32, _47), min(_53, _59)), _64);
    float _102 = min(min(_79.x, _79.y), min(_79.z, _79.w));
    float _69 = _102;
    _82 = vec4(_69);
}

