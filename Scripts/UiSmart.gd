extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	BackgroundMusic.stop()

func _on_Back_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	BackgroundMusic.play()
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")
