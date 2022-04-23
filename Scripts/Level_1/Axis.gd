extends Node2D

var highlited
var usual
var gears = []
export var number = 1
export var empty = 1
var cur_gear = 0

func _ready():
	gears.append(preload("res://Sprites/first_level/g1.png"))
	gears.append(preload("res://Sprites/first_level/g2.png"))
	gears.append(preload("res://Sprites/first_level/g3.png"))
	gears.append(preload("res://Sprites/first_level/g4.png"))
	highlited = preload("res://Sprites/first_level/h_axis (1).png")
	usual = preload("res://Sprites/first_level/axis.png")


func _on_Area2D_body_entered(body):
	if empty and cur_gear:
		$axis.texture = highlited


func _on_Area2D_body_exited(body):
	if empty and cur_gear:
		$axis.texture = usual
		
func add_gear(number):
	$gear.texture = gears[number - 1]
	empty = 0
	cur_gear = 0
