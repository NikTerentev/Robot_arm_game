extends CanvasLayer

func _ready():
	$AnimationPlayer.play("rise up")
	if PathToScene.pathToScene == "res://Scenes/Level8/CarRacing.tscn":
		$CrashSound.play()
		yield($CrashSound, "finished")


func _on_go_on_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene(PathToScene.pathToScene)


func _on_back_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")
