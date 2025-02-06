extends Node

var rndint = RandomNumberGenerator.new()
var num = 0
var win_lose: bool
var qr_text: String = "this thing fucking works"
var error_correction_level: int = 0

func _ready() -> void:
	randomWinner()

func randomWinner():
	rndint.randomize()
	var random = rndint.randi_range(0,100)
	for x in range(0,50):
		if x == random:
			win_lose = false
	for x in range(51,100):
		if x == random:
			win_lose = true
