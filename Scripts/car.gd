extends RigidBody2D

var wheels = []


func _ready():
	wheels = get_tree().get_nodes_in_group("wheels")
	print(wheels)


func _process(delta):
	if Input.is_action_pressed("ui_right"):
		print("right")
		for wheel in wheels:
			wheel.apply_torque_impulse(8000)
		
	elif Input.is_action_pressed("ui_left"):
		print("left")
		for wheel in wheels:
			wheel.apply_torque_impulse(-8000)
		
