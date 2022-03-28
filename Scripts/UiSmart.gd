extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	BackgroundMusic.stop()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Back_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	BackgroundMusic.play()
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")
