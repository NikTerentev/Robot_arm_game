extends RigidBody2D


var pos = Vector2()
	
	
func _process(delta):
	if Input.is_action_pressed("catch"):
		pos = get_global_mouse_position()
		look_at(pos)
