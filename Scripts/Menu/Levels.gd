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
	if WinningLogic.winLvl1 == true:
		WinningLogic.adress2 = "res://Scenes/Level2/Factory.tscn"
		$ReferenceRect/level2.set_normal_texture(load("res://Sprites/levels_sprites/Group 20.png"))
		$ReferenceRect/level2.set_pressed_texture(load("res://Sprites/levels_sprites/2 pressed.png"))
	if WinningLogic.winLvl2 == true:
		WinningLogic.adress3 = "res://Scenes/Level3/MainScene.tscn"
		$ReferenceRect/level3.set_normal_texture(load("res://Sprites/levels_sprites/Group 17.png"))
		$ReferenceRect/level3.set_pressed_texture(load("res://Sprites/levels_sprites/3 pressed.png"))
	if WinningLogic.winLvl3 == true:
		WinningLogic.adress7 = "res://Scenes/Level7/CarAssembly.tscn"
		$ReferenceRect/level7.set_normal_texture(load("res://Sprites/levels_sprites/Group 21.png"))
		$ReferenceRect/level7.set_pressed_texture(load("res://Sprites/levels_sprites/7 pressed.png"))
	if WinningLogic.winLvl7 == true:
		WinningLogic.adress8 = "res://Scenes/Level8/CarRacing.tscn"
		$ReferenceRect/level8.set_normal_texture(load("res://Sprites/levels_sprites/Group 18.png"))
		$ReferenceRect/level8.set_pressed_texture(load("res://Sprites/levels_sprites/8 pressed.png"))
	#set_star($group/stars_1, StarsForLevels.stars[0])
	#set_star($group/stars_2, StarsForLevels.stars[1])
	#set_star($group/stars_3, StarsForLevels.stars[2])
	#set_star($group/stars_4, StarsForLevels.stars[3])
	#set_star($group/stars_5, StarsForLevels.stars[4])
	#set_star($group/stars_6, StarsForLevels.stars[5])
	#set_star($group/stars_7, StarsForLevels.stars[6])


func _process(delta):
	pass


func _on_back_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")


func _on_level7_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene(WinningLogic.adress7)


func _on_level2_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene(WinningLogic.adress2)


func _on_level1_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene(WinningLogic.adress1)


func _on_level8_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene(WinningLogic.adress8)


func _on_level3_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene(WinningLogic.adress3)
