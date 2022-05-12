extends CanvasLayer


func _ready():
	$AnimationPlayer.play("Новая анимация")


func _on_go_on_pressed():
	get_tree().change_scene("res://Scenes/Menu/Levels.tscn")


func _on_back_pressed():
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")
