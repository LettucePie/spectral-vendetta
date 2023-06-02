shader_type canvas_item;

uniform sampler2D refraction_map;

uniform vec2 refraction_stretch = vec2(1.0, 1.0);
uniform float refraction_strength : hint_range(0.0, 0.1) = 0.02;

uniform float speed : hint_range(0.0, 1.0) = 0.1;


void fragment()
{
	vec2 uv = UV;
	
	vec2 refraction_offset = texture(
		refraction_map, 
		vec2(
			mod(uv.x * refraction_stretch.x + TIME * speed, 1.0), 
			mod(uv.y * refraction_stretch.y + TIME * speed, 1.0))).xy;
	refraction_offset -= 0.5; 
	
	vec4 refraction = texture(TEXTURE, UV - refraction_offset * refraction_strength);
	
	vec4 color = refraction.rgba;
	COLOR = color;
}