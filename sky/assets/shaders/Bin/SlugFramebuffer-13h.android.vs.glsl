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
    vec2 _316 = normalize(_245.zw);
    float _317 = dot(_257.xy, _245.xy) + _257.w;
    float _318 = dot(_257.xy, _316);
    float _319 = ((_317 * dot(_251.xy, _316)) - (_318 * (dot(_251.xy, _245.xy) + _251.w))) * _260.x;
    float _320 = ((_317 * dot(_254.xy, _316)) - (_318 * (dot(_254.xy, _245.xy) + _254.w))) * _260.y;
    float _321 = _317 * _317;
    float _322 = _317 * _318;
    float _323 = (_319 * _319) + (_320 * _320);
    vec2 _324 = _245.zw * ((_321 * (_322 + sqrt(_323))) / (_323 - (_322 * _322)));
    vec2 _265 = _245.xy + _324;
    vec2 _325 = vec2(_247.x + dot(_324, _249.xy), _247.y + dot(_324, _249.zw));
    vec2 _244 = _265;
    _239 = _325;
    vec4 _273 = _242;
    vec4 _275 = _268;
    uvec2 _429 = floatBitsToUint(_273.zw);
    ivec4 _278 = ivec4(int(_429.x & 65535u), int(_429.x >> 16u), int(_429.y & 65535u), int(_429.y >> 16u));
    vec4 _277 = _275;
    _270 = _277;
    _272 = _278;
    vec4 _288 = _283 * _230._m1;
    float _455 = _288.w;
    vec4 _456 = _288;
    vec3 _458 = _456.xyz * _455;
    _288.x = _458.x;
    _288.y = _458.y;
    _288.z = _458.z;
    vec4 _452 = _288;
    _282 = _452;
    float _298 = -_244.y;
    vec4 _299 = vec4(_244.x, _298, 0.0, 1.0);
    vec4 _300 = _226 * _299;
    gl_Position = _300;
    float _305 = gl_Position.y * (-1.0);
    gl_Position.y = _305;
}

