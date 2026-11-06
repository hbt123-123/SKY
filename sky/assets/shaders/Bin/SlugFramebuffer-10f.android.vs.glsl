#version 450

invariant gl_Position;

layout(set = 0, binding = 1, std140) uniform _209_211
{
    vec4 _m0;
    vec2 _m1;
} _211;

layout(set = 0, binding = 0, std140) uniform _228_230
{
    mat4 _m0;
    vec4 _m1;
} _230;

layout(location = 1) out vec2 _239;
layout(location = 0) in vec4 _241;
layout(location = 1) in vec4 _242;
layout(location = 2) in vec4 _243;
layout(location = 3) in vec4 _268;
layout(location = 2) flat out vec4 _270;
layout(location = 3) flat out ivec4 _272;
layout(location = 0) out vec4 _282;
layout(location = 4) in vec4 _283;

void main()
{
    mat4 _199 = mat4(vec4(1.0, 0.0, 0.0, 0.0), vec4(0.0, 1.0, 0.0, 0.0), vec4(0.0, 0.0, 1.0, 0.0), vec4(0.0, 0.0, 0.0, 1.0));
    _199[0].x = 2.0 * _211._m0.z;
    _199[1].y = 2.0 * _211._m0.w;
    _199[3].x = -1.0;
    _199[3].y = -1.0;
    mat4 _226 = _199 * _230._m0;
    mat4 _235 = transpose(_226);
    vec4 _245 = _241;
    vec4 _247 = _242;
    vec4 _249 = _243;
    vec4 _251 = _235[0];
    vec4 _254 = _235[1];
    vec4 _257 = _235[3];
    vec2 _260 = _211._m0.xy;
    vec2 _314 = normalize(_245.zw);
    float _315 = dot(_257.xy, _245.xy) + _257.w;
    float _316 = dot(_257.xy, _314);
    float _317 = ((_315 * dot(_251.xy, _314)) - (_316 * (dot(_251.xy, _245.xy) + _251.w))) * _260.x;
    float _318 = ((_315 * dot(_254.xy, _314)) - (_316 * (dot(_254.xy, _245.xy) + _254.w))) * _260.y;
    float _319 = _315 * _315;
    float _320 = _315 * _316;
    float _321 = (_317 * _317) + (_318 * _318);
    vec2 _322 = _245.zw * ((_319 * (_320 + sqrt(_321))) / (_321 - (_320 * _320)));
    vec2 _265 = _245.xy + _322;
    vec2 _323 = vec2(_247.x + dot(_322, _249.xy), _247.y + dot(_322, _249.zw));
    vec2 _244 = _265;
    _239 = _323;
    vec4 _273 = _242;
    vec4 _275 = _268;
    uvec2 _427 = floatBitsToUint(_273.zw);
    ivec4 _278 = ivec4(int(_427.x & 65535u), int(_427.x >> 16u), int(_427.y & 65535u), int(_427.y >> 16u));
    vec4 _277 = _275;
    _270 = _277;
    _272 = _278;
    vec4 _288 = _283 * _230._m1;
    float _453 = _288.w;
    vec4 _454 = _288;
    vec3 _456 = _454.xyz * _453;
    _288.x = _456.x;
    _288.y = _456.y;
    _288.z = _456.z;
    vec4 _450 = _288;
    _282 = _450;
    float _298 = -_244.y;
    vec4 _299 = vec4(_244.x, _298, 0.0, 1.0);
    vec4 _300 = _226 * _299;
    gl_Position = _300;
    float _305 = gl_Position.y * (-1.0);
    gl_Position.y = _305;
}

