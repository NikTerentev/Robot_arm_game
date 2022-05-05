extends CanvasLayer

var time = 0

func _ready():
	$Timer.start()
	BackgroundMusic.stop()

func _process(delta):
	time -= delta
	var sec = fmod(time, 60)
	var mins = fmod(time, 3600) / 60
	var time_str = "%02d:%02d" % [mins, sec]
	$time_counter/Label.text = time_str
	if time_str == "00:00":
		_on_Timer_timeout()
	
func _on_Back_bt_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	GameMusic.stop()
	BackgroundMusic.play()
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")

func _on_Timer_timeout():
	GameMusic.stop()
	BackgroundMusic.play()
	get_tree().change_scene("res://Scenes/Menu/Losing.tscn")

func _on_pause_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().paused = not get_tree().paused
	
func _on_task_pressed():
	$ClickSound.play()
	yield($ClickSound, "finished")
	$Popup.popup()
	$TextureButton/pause.pressed = true
	get_tree().paused = true

func _on_Popup_popup_hide():
	$ClickSound.play()
	yield($ClickSound, "finished")
	get_tree().paused = false
	$TextureButton/pause.pressed = false
