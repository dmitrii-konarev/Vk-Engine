#include "common.glsl"

DECLARE_PER_FRAME_PARAMS();

layout(set=2, binding=0) uniform sampler2D u_texture;

layout(location=0) in vec2 in_tex_coords;
layout(location=1) in vec4 in_color;

layout(location=0) out vec4 out_color;

void main() {
    out_color = in_color * texture(u_texture, in_tex_coords);
}
