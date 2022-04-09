extends Node


# Declare member variables here. Examples:
var size = 8
var levels = ['geers', 'motor', 'chains', 'battery', 'door', 'steering wheel',
 'wheel', 'car']
var stars = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for _i in range(size):
		stars.append(0)

