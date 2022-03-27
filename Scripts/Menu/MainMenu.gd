extends CanvasLayer


func _ready():
	print(StarsForLevels.size)  # выводим глобальную переменную
	# print(Stars.a)


func _on_TextureButton_pressed():
	$WindowDialog.popup()


func _on_StartGame_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Menu/GameMode.tscn")


func _on_MyAchievs_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Menu/Levels.tscn")


func _on_Exit_pressed():
# warning-ignore:return_value_discarded
	get_tree().exit()
