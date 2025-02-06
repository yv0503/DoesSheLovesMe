extends Button

@export var petal: AnimatedSprite2D

func _on_pressed() -> void:
	petal.play("petal_pull")
	$".".queue_free()
	if Global.win_lose == false && Global.num  < 8:
		Global.win_lose = true
		Global.num +=1
	elif Global.win_lose == true && Global.num  < 8:
		Global.win_lose = false
		Global.num +=1
	if Global.win_lose == true && Global.num  == 8:
		get_tree().change_scene_to_file("res://scenes/tcsn/winner.tscn")
	if Global.win_lose == false && Global.num  == 8:
		get_tree().change_scene_to_file("res://scenes/tcsn/loser.tscn")
