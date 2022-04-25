extends StaticBody2D

var counter = 0
var textures = []

func _ready():
	textures.append(preload("res://Sprites/second_level/basket.png"))
	textures.append(preload("res://Sprites/second_level/basket_1.png"))
	textures.append(preload("res://Sprites/second_level/basket_2.png"))
	textures.append(preload("res://Sprites/second_level/basket_3.png"))
	textures.append(preload("res://Sprites/second_level/full_basket.png"))
	textures.append(preload("res://Sprites/second_level/full_basket_1.png"))

func add_rubbish():
	counter += 1
	if counter < 3:
		$Sprite.texture = textures[1]
	elif counter < 5:
		$Sprite.texture = textures[2]
	elif counter < 7:
		$Sprite.texture = textures[3]
	elif counter < 9:
		$Sprite.texture = textures[4]
	else:
		$Sprite.texture = textures[5]
