extends RigidBody2D
	
onready var joystick = get_node("/root/MainScene/LevelUI/Controling/ScreenWheel_4/ScreenWheel")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var v_angle = rad2deg(joystick.get_value().angle())
	rotation_degrees = v_angle
