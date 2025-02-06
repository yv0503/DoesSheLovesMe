extends Button

var animation_value : int = 0
var winlose : bool = false

func _on_pressed() -> void:
	print("Hello World")
	animation()

func win_lose() -> void:
	if winlose == true:
		pass
	
func animation() -> void:
	if animation_value == 0:
		$AnimatedSprite2D.play("petal_1")
		animation_value+=1
		winlose = true
	elif animation_value == 1:
		$AnimatedSprite2D.play("petal_2")
		animation_value+=1
		winlose = false
	elif animation_value == 2:
		$AnimatedSprite2D.play("petal_3")
		animation_value+=1
		winlose = true
	elif animation_value == 3:
		$AnimatedSprite2D.play("petal_4")
		animation_value+=1
		winlose = false
	elif animation_value == 4:
		$AnimatedSprite2D.play("petal_5")
		animation_value+=1
		winlose = true
	elif animation_value == 5:
		$AnimatedSprite2D.play("petal_6")
		animation_value+=1
		winlose = false
	elif animation_value == 6:
		$AnimatedSprite2D.play("petal_7")
		animation_value+=1
		winlose = true
	elif animation_value == 7:
		$AnimatedSprite2D.play("petal_8")
		animation_value+=1
		winlose = false
