extends Control

@export var text_label: Label 
@export var qr_code_image: TextureRect


func _ready() -> void:
	var qr_code: QrCode = QrCode.new()
	qr_code.error_correct_level = Global.error_correction_level
	var texture: ImageTexture = qr_code.get_texture(Global.qr_text)

	text_label.text = Global.qr_text
	qr_code_image.texture = texture
