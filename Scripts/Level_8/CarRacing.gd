extends Node2D

onready var road = preload("res://Scenes/Level8/Road.tscn")
var timer = 0

func _process(delta):
	timer -= 1
	if timer < 0:
		var road_ins = road.instance()
		timer = 50
		add_child(road_ins)
