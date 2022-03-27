extends CanvasLayer


func _ready():
	print(StarsForLevels.size)  # выводим глобальную переменную
	# print(Stars.a)


func _on_TextureButton_pressed():
	$ClickSound.play()
	$WindowDialog.popup()


func _on_StartGame_pressed():
# warning-ignore:return_value_discarded
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/GameMode.tscn")


func _on_MyAchievs_pressed():
# warning-ignore:return_value_discarded
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Levels.tscn")


func _on_Exit_pressed():
# warning-ignore:return_value_discarded
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().exit()