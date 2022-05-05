extends CanvasLayer

var three_stars = load("res://Sprites/levels_sprites/3 stars.png")
var two_stars = load("res://Sprites/levels_sprites/2_ stars.png")
var one_star = load("res://Sprites/levels_sprites/star.png")

func set_star(level, num):
	if num == 1:
		level.texture = one_star
	elif num == 2:
		level.texture = two_stars
	else:
		level.texture = three_stars


func _ready():
	#set_star($group/stars_1, StarsForLevels.stars[0])
	#set_star($group/stars_2, StarsForLevels.stars[1])
	#set_star($group/stars_3, StarsForLevels.stars[2])
	#set_star($group/stars_4, StarsForLevels.stars[3])
	#set_star($group/stars_5, StarsForLevels.stars[4])
	#set_star($group/stars_6, StarsForLevels.stars[5])
	#set_star($group/stars_7, StarsForLevels.stars[6])
	pass


func _process(delta):
	pass


func _on_back_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Menu/GameMode.tscn")


func _on_level7_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Level7/CarAssembly.tscn")


func _on_level2_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Level2/Factory.tscn")


func _on_level1_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Level1/GameScene.tscn")


func _on_level8_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Level8/CarRacing.tscn")
