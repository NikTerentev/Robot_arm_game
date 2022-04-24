extends Position2D

signal spawned(spawn)

var details = []
var rng

func spawn(detail):
	var spawling = details[detail - 1].instance()
	add_child(spawling)
	spawling.add_to_group("detail")
	if detail == 1:
		spawling.add_to_group("right")
	else:
		spawling.add_to_group("wrong")	
	spawling.global_position = global_position
	emit_signal("spawned", spawling)
	return spawling

func _ready():
	details.append(preload("res://Scenes/Level2/RightDetail.tscn"))
	details.append(preload("res://Scenes/Level2/WrongDetail.tscn"))
	details.append(preload("res://Scenes/Level2/WrongDetail2.tscn"))
