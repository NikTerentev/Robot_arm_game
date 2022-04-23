extends Node2D

int b1 = 0

func _ready():
	pass


func _on_Area2D_body_entered(body):
	var opened = preload("res://Sprites/first_level/Group 42.png")
	$box1.texture = opened


func _on_Area2D_body_exited(body):
	var closed = preload("res://Sprites/first_level/Group 38.png")
	$box1.texture = closed


func _on_Area2D2_body_entered(body):
	var opened = preload("res://Sprites/first_level/b2.png")
	$box2.texture = opened


func _on_Area2D3_body_entered(body):
	var opened = preload("res://Sprites/first_level/b3.png")
	$box3.texture = opened


func _on_Area2D4_body_entered(body):
	var opened = preload("res://Sprites/first_level/b4.png")
	$box4.texture = opened


func _on_Area2D2_body_exited(body):
	var closed = preload("res://Sprites/first_level/Group 39.png")
	$box2.texture = closed


func _on_Area2D3_body_exited(body):
	var closed = preload("res://Sprites/first_level/Group 40.png")
	$box3.texture = closed


func _on_Area2D4_body_exited(body):
	var closed = preload("res://Sprites/first_level/Group 41.png")
	$box4.texture = closed
