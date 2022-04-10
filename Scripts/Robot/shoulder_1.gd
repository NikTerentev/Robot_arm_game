extends RigidBody2D


var velocity = Vector2()
var pos = Vector2()
var key = "one"

func get_input():
	look_at(pos)
	print(pos.y, position)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("one"):
		pos = get_global_mouse_position()
		if pos.y < 1000:
			get_input()
			velocity = apply_torque_impulse(0.1)
		else:
			print("Wrong", pos.y)
	if Input.is_action_pressed("catch"):
		print("catch")
