extends Sprite

func _ready():
	position.y = -445
	position.x = 850

func _process(delta):
	position.y += 8
	if position.y > 1800:
		queue_free()

