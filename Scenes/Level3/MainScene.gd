extends Node2D


func _ready():
	$Stand.stop()
	$Stand.frame = 0
	

func _on_Button_pressed():
	$Stand.play("default")


func _on_AnimatedSprite_animation_finished():
	$Stand.stop()
	$Stand.frame = 3
