shader_type canvas_item;

uniform sampler2D dissolve_pattern;
uniform float dissolve_state : hint_range(0,1.1) = 0;
uniform vec4 target_color : source_color;
uniform vec4 replace_color: source_color;
uniform float tolerance : hint_range(0,1);

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	float dist = distance(tex_color.rgb, target_color.rgb);
	if (dist<tolerance)
	{
		tex_color.rgba = replace_color.rgba;
	}	
	COLOR = tex_color;
	float pattern_val = texture(dissolve_pattern, UV).r;
	COLOR.a *= step(dissolve_state, pattern_val);
	
	
	
	
}