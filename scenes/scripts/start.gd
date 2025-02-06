extends Button

var random = RandomNumberGenerator.new()

func on_start_play():
	random.randomize()
	var rndInt : int = random.randi_range(0, 100)
	Transition.transition()
	await Transition.on_transition_finished
	for x in range(0, 50):
		if (rndInt == x):
			get_tree().change_scene_to_file("res://scenes/tcsn/voucher2.tscn")	
	for x in range(50,100):
		if(rndInt == x):
			get_tree().change_scene_to_file("res://scenes/tcsn/voucher2.tscn")

func _on_pressed() -> void:
	on_start_play()
	Global.num = 0
	Global.win_lose = false
