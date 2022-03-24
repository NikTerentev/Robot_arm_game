extends Sprite


var velocity = Vector2()

func get_input():
	look_at(get_global_mouse_position())
	#velocity = Vector2()
	#velocity = rotate(0.1)
		
