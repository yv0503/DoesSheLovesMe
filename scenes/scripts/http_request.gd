extends Node2D

var url = "" #Insert Api
@onready var http_request = $HTTPRequest

func _ready() -> void:
	http_request.request_completed.connect(_on_http_request_request_completed)
	send_request()

func send_request():
	var headers = ["Content-Type: application/json"]
	http_request.request(url,headers,HTTPClient.METHOD_GET)

func _on_http_request_request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray) -> void:
	var json = JSON.parse_string(body.get_string_from_utf8())
	print(json) 
