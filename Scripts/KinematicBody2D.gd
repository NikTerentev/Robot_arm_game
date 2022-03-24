extends KinematicBody2D



var velocity = Vector2(0, 0)

func _ready():
	#set_axis_lock(true)
	pass

func _physics_process(delta):
	var collision_info = move_and_collide(Vector2())
	if(collision_info):
		print("Столкновение2")
	if Input.is_action_pressed("four"):
		velocity = rotate(0.1)
