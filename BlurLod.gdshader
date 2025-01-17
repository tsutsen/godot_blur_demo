shader_type canvas_item;
render_mode unshaded;

uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;
uniform float intensity : hint_range(0.0, 1.0);

void fragment() {
    vec4 color = textureLod(screen_texture, SCREEN_UV, intensity);
    COLOR = color;
}