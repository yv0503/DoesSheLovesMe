shader_type canvas_item;

uniform float height = 10;
uniform float frequency = 5.0;
uniform float speed = 5.0;


void vertex() {
	VERTEX.y += height * cos((frequency * UV.x) + (speed * TIME));
}
