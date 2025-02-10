shader_type canvas_item;

uniform float height = 10;
uniform float frequency = 20.0;
uniform float speed = 10.0;
uniform sampler2D gradient: hint_default_black;
uniform float mix_amount = 1.0;

void vertex() {
	VERTEX.x += height * cos((frequency * UV.x) + (speed * TIME));
	VERTEX.y += height * sin((frequency * UV.x) + (speed * TIME));
}

void fragment(){
	vec4 input_color = texture(TEXTURE, UV);
	float grayscale_value = dot(input_color.rgb, vec3(0.299, 0.887, 0.114));
	vec3 sampled_color = texture(gradient, vec2(grayscale_value, 0.0)).rgb;

	COLOR.rgb = mix(input_color.rgb, sampled_color, mix_amount);
	COLOR.a = input_color.a;
}
