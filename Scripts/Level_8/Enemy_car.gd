extends Area2D

func _ready():
	randomize()
	position.y = -100
	var array = [662, 784, 913, 1038]
	var index = rand_range(0, 4)
	position.x = array[index]

func _process(delta):
	position.y += 11
