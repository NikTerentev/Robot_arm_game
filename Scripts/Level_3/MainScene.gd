extends Node2D

var is_closed = 1

func _ready():
	PathToScene.pathToScene = "res://Scenes/Level3/MainScene.tscn"
	$LevelUI.time = 90
	$Stand.stop()
	$Arm.frame = 0
	$Stand.frame = 0
	

func _on_AnimatedSprite_animation_finished():
	$Stand.stop()
	$Stand.frame = 3
	is_closed = 0


func _on_Arm_animation_finished():
	$Arm.stop()
	$Arm.frame = 4
	$Stand.play("default")


func _on_Area2D_body_entered(body):
	if is_closed:
		$Arm.play("default")
