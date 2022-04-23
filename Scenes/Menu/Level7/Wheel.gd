extends RigidBody2D


var reset_state = false
	
func _integrate_forces(state):
	if reset_state:
		state.transform = Transform2D(0.0, Vector2(100, 100))
		reset_state = false
