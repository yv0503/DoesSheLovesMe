extends Button

var random = RandomNumberGenerator.new()

func on_start_play():
	random.randomize()
	var rndInt : int = random.randi_range(0, 150)
	Transition.transition()
	await Transition.on_transition_finished
	for x in range(0, 50):
		if (rndInt == x):
			get_tree().change_scene_to_file("res://scenes/tcsn/vouchers/voucher.tscn")	
	for x in range(51,100):
		if(rndInt == x):
			get_tree().change_scene_to_file("res://scenes/tcsn/vouchers/voucher_2.tscn")
	for x in range(101,150):
		if(rndInt == x):
			get_tree().change_scene_to_file("res://scenes/tcsn/vouchers/voucher_3.tscn")

func _on_pressed() -> void:
	on_start_play()
	Global.num = 0
	Global.randomWinner()
