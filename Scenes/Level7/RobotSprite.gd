extends Node2D

var is_taken = false
var empty
var taken
var wheels = []
var get_wheel = 0
var spawner

func _ready():
	empty = get_tree().get_nodes_in_group("empty")[0]
	taken = get_tree().get_nodes_in_group("taken")[0]
	wheels = get_tree().get_nodes_in_group("wheel")
	spawner = get_node("Ground/g_4/shoulder_4/4_3/shoulder_3/3_2/shoulder_2/2_1/shoulder_1/Spawner")


func _on_Area2D_body_entered(body):
	if not is_taken and body in wheels:
		get_wheel = body
		body.queue_free()
		get_node("../down").show()
		empty.hide()
		taken.show()
		is_taken = not is_taken


func throw_object():
	var pos = spawner.global_position
	empty.show()
	taken.hide()
	is_taken = 0
	return pos
