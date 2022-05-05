extends Sprite

func _process(delta):
	position.y += 8
	if position.y > 1800:
		queue_free()

