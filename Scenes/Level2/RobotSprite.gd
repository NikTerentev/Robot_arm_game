extends Node2D

var arm
var basket
var is_empty = 1
var empty_text = preload("res://Sprites/robot_sprites/arm.png")
var curr_detail = 0
var spawner

func _ready():
	arm = get_node("Ground/g_4/shoulder_4/4_3/shoulder_3/3_2/shoulder_2/2_1/shoulder_1/empty/arn/arm")
	basket = get_node("../basket")
	spawner = get_node("Ground/g_4/shoulder_4/4_3/shoulder_3/3_2/shoulder_2/2_1/shoulder_1/Spawner")


func _on_Area2D_body_entered(body):
	if body in get_tree().get_nodes_in_group("detail") and is_empty:
		var texture = body.arm
		arm.texture = texture
		is_empty = 0
		curr_detail = body.detail
		body.queue_free()
		get_node("../down").show()
	if body == basket and not is_empty:
		curr_detail = null
		throw_object()
		basket.add_rubbish()
		

func throw_object():
	arm.texture = empty_text
	is_empty = 1
	print(curr_detail)
	if curr_detail:
		
		spawner.spawn(curr_detail)
		curr_detail = 0
	
