extends Node

var random = RandomNumberGenerator.new()
var num = 0
var win_lose: bool
var qr_text: String = "09erwui34290ersdlk"
var error_correction_level: int = 0

func _ready() -> void:
	randomWinner()

func randomWinner():
	random.randomize()
	var rndint = random.randi_range(0,100)
	for x in range(0,50):
		if x == rndint:
			win_lose = false
	for x in range(51,100):
		if x == rndint:
			win_lose = true
