extends Node2D

var highlited = []
var usual
var gears = []
export var correct = 0
export var empty = 1
var triggered = 0
# cur_gear = 0

func _ready():
	gears.append(preload("res://Sprites/first_level/g1.png"))
	gears.append(preload("res://Sprites/first_level/g2.png"))
	gears.append(preload("res://Sprites/first_level/g3.png"))
	gears.append(preload("res://Sprites/first_level/g4.png"))
	highlited.append(preload("res://Sprites/first_level/h_axis.png"))
	highlited.append(preload("res://Sprites/first_level/r_axis.png"))
	usual = preload("res://Sprites/first_level/axis.png")

func delete_gear():
	$gear.texture = null
	empty = 1
	
func set_gear(gear):
	$gear.texture = gears[gear - 1]
	empty = 0

func set_highlite(is_red):
	$axis.texture = highlited[is_red]
	
func set_usual():
	$axis.texture = usual
	
func _on_Area2D_body_entered(body):
	triggered = 1


func _on_Area2D_body_exited(body):
	triggered = 0
		
func add_gear(number):
	$gear.texture = gears[number - 1]
	empty = 0
