extends Node2D

var highlited = []
var usual
var right = []
var wrong = []
export var correct = 0
export var empty = 1
var triggered = 0
var is_correct

func _ready():
	highlited.append(preload("res://Sprites/first_level/h_axis.png"))
	highlited.append(preload("res://Sprites/first_level/r_axis.png"))
	usual = preload("res://Sprites/first_level/axis.png")
	right.append(preload("res://Sprites/first_level/green_1.png"))
	right.append(preload("res://Sprites/first_level/green_2.png"))
	right.append(preload("res://Sprites/first_level/green_3.png"))
	right.append(preload("res://Sprites/first_level/green_4.png"))
	wrong.append(preload("res://Sprites/first_level/red_1.png"))
	wrong.append(preload("res://Sprites/first_level/red_2.png"))
	wrong.append(preload("res://Sprites/first_level/red_3.png"))
	wrong.append(preload("res://Sprites/first_level/red_4.png"))
	if correct == 0:
		is_correct = 1
	
func delete_gear():
	$gear.texture = null
	empty = 1
	var change = is_correct
	if correct == 0:
		is_correct = 1
	else:
		is_correct = 0
	return change
	
func set_gear(gear):
	if gear == correct:
		$gear.texture = right[gear - 1]
		is_correct = 1
	else:
		$gear.texture = wrong[gear - 1]
		is_correct = 0
	empty = 0
	return is_correct

func set_highlite(is_red):
	$axis.texture = highlited[is_red]
	
func set_usual():
	$axis.texture = usual
	
func _on_Area2D_body_entered(body):
	triggered = 1


func _on_Area2D_body_exited(body):
	triggered = 0
		
