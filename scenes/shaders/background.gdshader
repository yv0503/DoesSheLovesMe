shader_type canvas_item;

uniform float height = 10;
uniform float frequency = 20.0;
uniform float speed = 10.0;

void vertex() {
	VERTEX.x += height * cos((frequency * UV.x) + (speed * TIME));
	VERTEX.y += height * sin((frequency * UV.x) + (speed * TIME));
}
