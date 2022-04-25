extends CanvasLayer


func _ready():
	pass

func _on_TextureButton_pressed():
	$ClickSound.play()
	yield($ClickSound, "finp-ished")
	$Popup.popup()


func _on_StartGame_pressed():
# warning-ignore:return_value_discarded
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Menu/GameMode.tscn")


func _on_MyAchievs_pressed():
# warning-ignore:return_value_discarded
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Menu/Awards.tscn")


func _on_Exit_pressed():
# warning-ignore:return_value_discarded
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().quit()
