extends Node2D

var highlited = preload("res://Sprites/third_level/hole_y.png")
var usual = preload("res://Sprites/third_level/hole.png")
var is_usual = 1
var triggered = 0

func _ready():
	pass

func set_usual():
	$Sprite.texture = usual
	
	
func set_highlite():
	$Sprite.texture = highlited
	

func _on_Area2D_body_entered(body):
	triggered = 1


func _on_Area2D_body_exited(body):
	triggered = 0
