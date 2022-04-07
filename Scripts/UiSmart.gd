extends CanvasLayer

var time = 0
const wait_time = 20 
func _ready():
	$Timer.start()
	BackgroundMusic.stop()


func _process(delta):
	if not $Timer.is_stopped():
		time += delta
		var sec = fmod(time, 60)
		var mins = fmod(time, 3600) / 60
		var time_str = "%02d:%02d" % [mins, sec]
		$time_counter/Label.text = time_str
	
func _on_Back_bt_pressed():
	print("pressed")
	$ClickSound.play()
	yield($ClickSound, "finished")
	BackgroundMusic.play()
	get_tree().change_scene("res://Scenes/Menu/MainMenu.tscn")

func _on_Timer_timeout():
	get_tree().change_scene("res://Scenes/Menu/Losing.tscn")

func _on_pause_pressed():
	if $Timer.is_stopped():
		$Timer.wait_time = wait_time - fmod(time, 60)
		$Timer.start()
		
	else:
		$Timer.stop()
