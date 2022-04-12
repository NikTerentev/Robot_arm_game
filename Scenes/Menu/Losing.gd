extends CanvasLayer


func _ready():
	$AnimationPlayer.play("rise up")


func _on_go_on_pressed():
	get_tree().change_scene("res://Scenes/Menu/UiSmart.tscn")


func _on_back_pressed():
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")
