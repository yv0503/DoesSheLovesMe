extends Button

@export var petal: AnimatedSprite2D
signal anim_finished

func _ready():
	petal.animation_finished.connect(petal_anim)

func _on_pressed() -> void:
	petal_anim()
	$".".queue_free()
	if Global.win_lose == false && Global.num  < 8:
		Global.win_lose = true
		Global.num +=1
	elif Global.win_lose == true && Global.num  < 8:
		Global.win_lose = false
		Global.num +=1
	if Global.win_lose == true && Global.num == 8:
		get_tree().change_scene_to_file("res://scenes/tcsn/winner.tscn")
	if Global.win_lose == false && Global.num == 8:
		get_tree().change_scene_to_file("res://scenes/tcsn/loser.tscn")
		
func petal_anim():
	petal.play("petal_pull")
	
