
extends Node2D

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
	var voucher_code = voucher_message['voucherCode']
	print(voucher_code)
