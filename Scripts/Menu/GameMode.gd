extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_back_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Scenes/Menu/Levels.tscn")


func _on_TextureButton2_pressed():
	get_tree().change_scene("res://Scenes/UiSmart.tscn")
