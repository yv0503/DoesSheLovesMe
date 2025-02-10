extends Button

@export var input_voucher_code: TextEdit
@export var wrong_text: AnimationPlayer
var random = RandomNumberGenerator.new()
var voucher_code : String
var url = "https://dev.accessmanagementsystem.online/api/v1?request=VOUCHER&data=8T64-2G3S"
@onready var http_request = $HTTPRequest

func _ready():
	http_request.request_completed.connect(_on_http_request_request_completed)
	send_request()

func send_request():
	var headers = ["Content-Type: application/json"]
	http_request.request(url,headers,HTTPClient.METHOD_GET)

func _on_http_request_request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray):
	var json = JSON.parse_string(body.get_string_from_utf8())
	var message: String = json['message']
	var voucher_message = JSON.parse_string(message)
	voucher_code = voucher_message['voucherCode']
	print(voucher_code)

func on_start_play():
	if input_voucher_code.text != voucher_code:
		input_voucher_code.text = "Incorrect Code"
		wrong_text.play("wrong_code_input")
		print(voucher_code)
	elif input_voucher_code.text == voucher_code:
		random.randomize()
		var rndInt : int = random.randi_range(0, 170)
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
		for x in range(151,170):
			if(rndInt == x):
				Global.win_lose = true
				get_tree().change_scene_to_file("res://scenes/tcsn/vouchers/voucher_4.tscn")

func _on_pressed() -> void:
	Global.num = 0
	Global.randomWinner()
	on_start_play()
