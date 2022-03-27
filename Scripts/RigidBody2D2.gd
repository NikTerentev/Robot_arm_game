extends RigidBody2D


var velocity = Vector2(0, 0)


func _integrate_forces(state):
	print(24)

func _physics_process(delta):
	if Input.is_action_pressed("four"):
		print(4)
		velocity = add_torque(1)
		apply_torque_impulse(1)
		set_axis_velocity(Vector2(0, 1))
