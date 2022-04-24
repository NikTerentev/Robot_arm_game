extends Position2D

signal spawned(spawn)

export (PackedScene) var wrong_detail
export (PackedScene) var wrong_detail_2
export (PackedScene) var right_detail
var details = []
var rng

func spawn(detail):
	var spawling = detail.instance()
	add_child(spawling)
	spawling.add_to_group("detail")
	if not det_number:
		spawling.add_to_group("right")
	else:
		spawling.add_to_group("wrong")
	spawling.global_position = global_position
	emit_signal("spawned", spawling)
	return spawling

func _ready():
	details = [right_detail, wrong_detail, wrong_detail_2]
