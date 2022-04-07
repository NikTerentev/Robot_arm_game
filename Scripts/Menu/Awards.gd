extends CanvasLayer


func _ready():
	pass # Replace with function body.


func _on_Back_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")
