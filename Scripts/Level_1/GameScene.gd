extends Node2D

var boxes = []
var is_open = [0, 0, 0, 0]
var opened = []
var closed = []

func _ready():
	opened.append(preload("res://Sprites/first_level/b1.png"))
	opened.append(preload("res://Sprites/first_level/b2.png"))
	opened.append(preload("res://Sprites/first_level/b3.png"))
	opened.append(preload("res://Sprites/first_level/b4.png"))
	closed.append(preload("res://Sprites/first_level/c1.png"))
	closed.append(preload("res://Sprites/first_level/c2.png"))
	closed.append(preload("res://Sprites/first_level/c3.png"))
	closed.append(preload("res://Sprites/first_level/c4.png"))
	boxes.append(get_node("box1"))
	boxes.append(get_node("box2"))
	boxes.append(get_node("box3"))
	boxes.append(get_node("box4"))

func open_box(numb, box):
	box.texture = opened[numb - 1]
	is_open[numb - 1] = 1
	for i in range(numb, 4):
		if is_open[i]:
			print(boxes[i])
			close_box(i + 1, boxes[i])

func close_box(numb, box):
	box.texture = closed[numb - 1]
	is_open[numb - 1] = 0
	
func _on_Area2D_body_entered(body):
	open_box(1, $box1)


func _on_Area2D_body_exited(body):
	close_box(1, $box1)


func _on_Area2D2_body_entered(body):
	open_box(2, $box2)


func _on_Area2D3_body_entered(body):
	open_box(3, $box3)


func _on_Area2D4_body_entered(body):
	open_box(4, $box4)


func _on_Area2D2_body_exited(body):
	close_box(2, $box2)


func _on_Area2D3_body_exited(body):
	close_box(3, $box3)


func _on_Area2D4_body_exited(body):
	close_box(4, $box4)
