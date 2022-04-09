extends Node2D

var is_stand_1 = 0
var is_stand_2 = 0
var wheels = []

func _ready():
	GameMusic.play()
	var wheel = load("res://Scenes/Level7/Wheel.tscn").instance()
	print(wheel)
	wheel.transform.origin = Vector2(100, 100)
	wheel.show()
	wheels = get_tree().get_nodes_in_group("wheel")


func _on_placeholder_1_body_entered(body):
	if not is_stand_1 and body in wheels:
		$picture.show()
		body.hide()
		is_stand_1 = 1
		


func _on_placeholder2_body_entered(body):
	if not is_stand_2 and body in wheels:
		$picture2.show()
		body.hide()
		is_stand_2 = 1
	

func _process(delta):
	if is_stand_1 and is_stand_2:
		yield(get_tree().create_timer(1.5), "timeout")
		get_tree().change_scene("res://Scenes/Menu/Winning.tscn")

func _on_catch_button_pressed():
	$robot.take_something()
