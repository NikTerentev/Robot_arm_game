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
		if pos.y < 700:
			get_input()
			velocity = apply_torque_impulse(0.1)
		else:
			print("Wrong", pos.y)
	if Input.is_action_pressed("catch"):
		print("catch")
		$n1_a1/arm_1.apply_torque_impulse(200)
		$n1_a2/arm_2.apply_torque_impulse(200)
