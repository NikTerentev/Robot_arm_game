extends Node2D

var is_stand_1 = 0
var is_stand_2 = 0

func _ready():
	$wheel.apply_central_impulse(Vector2(500, 0))


func _on_TextureButton_pressed():
	print("Нажали!")


func _on_placeholder_1_body_entered(body):
	if not is_stand_1:
		print(body)
		$picture.show()
		body.hide()
		is_stand_1 = 1
		

func _on_placeholder2_body_entered(body):
	if not is_stand_2:
		print(body)
		$picture2.show()
		body.hide()
		is_stand_2 = 1
	

