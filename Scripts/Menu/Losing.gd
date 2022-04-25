extends CanvasLayer

func _ready():
	$AnimationPlayer.play("rise up")


func _on_go_on_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene(PathToScene.pathToScene)


func _on_back_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")
