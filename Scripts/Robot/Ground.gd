extends StaticBody2D


var shoulders = []
var velocity = Vector2()


func _ready():
	shoulders = get_tree().get_nodes_in_group("shoulder")
	


func _process(delta):
	pass

