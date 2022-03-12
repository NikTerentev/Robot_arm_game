extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(StarsForLevels.size)  # выводим глобальную переменную
	# print(Stars.a)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_TextureButton_pressed():
	$WindowDialog.popup()


func _on_StartGame_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://GameMode.tscn")


func _on_MyAchievs_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Levels.tscn")
