extends Node2D

var boxes = []
var is_open = [0, 0, 0, 0]
var opened = []
var closed = []
var is_catched = 0
var arms = []
var gears = []
var cur_gear = 0
var axes
var cur
var some_gear = 0
var correct_nums = 1

func _ready():
	GameMusic.play()
	$car/gears.hide()
	$LevelUI.update_score(0)
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
	arms.append(preload("res://Sprites/first_level/catch_g1.png"))
	arms.append(preload("res://Sprites/first_level/catch_g2.png"))
	arms.append(preload("res://Sprites/first_level/catch_g3.png"))
	arms.append(preload("res://Sprites/first_level/catch_g4.png"))
	axes = get_tree().get_nodes_in_group("axis")
	print(axes)
	$car/Axis1.set_gear(3)
	$car/Axis10.set_gear(1)
	PathToScene.pathToScene = "res://Scenes/Level1/GameScene.tscn"
	$LevelUI.time = 90
	
	
func _process(delta):
	if is_catched:
		for i in range(8, -1, -1):
			if axes[i].triggered and axes[i].empty:
				axes[i].set_highlite(0)
				cur = i
				break
			else:
				axes[i].set_usual()
				cur = 0
	else:
		for i in range(8, -1, -1):
			if not axes[i].empty and axes[i].triggered:
				axes[i].set_highlite(1)
				cur = i
				$delete.show()
				break
			else:
				axes[i].set_usual()
				$delete.hide()
				cur = 0
	if cur:
			for i in range(8, -1, -1):
				if cur != i:
					axes[i].set_usual()	
	

func catch_object(number):
	var arm = get_node("RobotSprite/Ground/g_4/shoulder_4/4_3/shoulder_3/3_2/shoulder_2/2_1/shoulder_1/empty/arn/arm")
	var new_texture = arms[number - 1]
	arm.texture = new_texture
	cur_gear = number
	print(number)
	is_catched = 1
	$down.show()
	
	
func open_box(numb, box):
	if not cur_gear:
		box.texture = opened[numb - 1]
		is_open[numb - 1] = 1
		for i in range(numb, 4):
			if is_open[i]:
				print(boxes[i])
				close_box(i + 1, boxes[i])
		catch_object(numb)


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


func _on_TextureButton_pressed():
	var arm = get_node("RobotSprite/Ground/g_4/shoulder_4/4_3/shoulder_3/3_2/shoulder_2/2_1/shoulder_1/empty/arn/arm")
	arm.texture = preload("res://Sprites/robot_sprites/arm.png")
	is_catched = 0
	$down.hide()
	if cur:
		print(cur_gear)
		some_gear += 1
		var num = axes[cur].set_gear(cur_gear)
		correct_nums += num
		$LevelUI.update_score(correct_nums)
		if correct_nums == 8:
			WinningLogic.winLvl1 = true
			get_tree().change_scene("res://Scenes/Menu/Winning.tscn")
	cur_gear = 0
	
func _on_delete_pressed():
	$delete.hide()
	print(cur)
	var num = axes[cur].delete_gear()
	correct_nums -= num
	some_gear -= 1
	
func winning():
	$car/gears.show()
