extends Node2D

onready var road = preload("res://Scenes/Level8/Road.tscn")

var timer = 0
var timer_truck = 30

func _ready():
	GameMusic.play()
	
	PathToScene.pathToScene = "res://Scenes/Level8/CarRacing.tscn"
	$LevelUI.time = 60

func _process(delta):
	timer_truck -= 1
	timer -= 1
	if timer_truck < 0:
		randomize()
		var number = int(rand_range(1, 4))
		var truck = load("res://Scenes/Level8/Enemy_car_%s.tscn" % str(number))
		var truck_ins = truck.instance()
		timer_truck = 80
		add_child(truck_ins)
		
	if timer < 0:
		var road_ins = road.instance()
		timer = 50
		add_child(road_ins)


func _on_player_area_entered(area):
	get_tree().change_scene("res://Scenes/Menu/Losing.tscn")
