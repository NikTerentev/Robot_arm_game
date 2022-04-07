extends Node2D

var is_taken = false
var empty
var taken
var wheels = []
var get_wheel = 0

func _ready():
	empty = get_tree().get_nodes_in_group("empty")[0]
	taken = get_tree().get_nodes_in_group("taken")[0]
	wheels = get_tree().get_nodes_in_group("wheel")

func take_something():
	print($MainScene/wheel)
	if is_taken and get_wheel:
		taken.hide()
		empty.show()
		var cube = RigidBody.new()
		
		cube.transform.origin = Vector3(0, 0, 0)
		get_wheel.show()
		get_wheel.reset_state = true
	is_taken = not is_taken


func _on_Area2D_body_entered(body):
	if not is_taken and body in wheels:
		get_wheel = body
		body.queue_free()
		empty.hide()
		taken.show()
		is_taken = not is_taken
