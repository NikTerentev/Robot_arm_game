extends Sprite

export (int) var speed = 200

var velocity = Vector2()

func get_input():
	look_at(get_global_mouse_position())
	velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("one"):
		get_input()
		velocity = rotate(1)
