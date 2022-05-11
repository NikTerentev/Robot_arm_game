extends Area2D

func _ready():
	randomize()
	position.y = -100
	position.x = rand_range(662, 1044)

func _process(delta):
	position.y += 11
