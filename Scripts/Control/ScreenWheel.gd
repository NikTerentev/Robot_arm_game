extends TouchScreenButton

var radius = Vector2(13, 13)
var boundary = 51

var ongoing_drag = -1

var threshold = 10

func get_button_pos():
	return position + radius

func _input(event):
	if event is InputEventScreenDrag:
		var event_dist_from_centre = (event.position - get_parent().global_position).length()
		
		if event_dist_from_centre <= boundary * global_scale.x or event.get_index() == ongoing_drag:
			set_global_position(event.position - radius * global_scale)
			
			if get_button_pos().length() > boundary:
				set_position(get_button_pos().normalized() * boundary - radius)
			
			# Вращение внутреннего колеса
			var second_bg = get_parent().get_node("ButtonBgSecond")
			second_bg.look_at(get_global_mouse_position())
			
			ongoing_drag = event.get_index()
	
	if event is InputEventScreenTouch and !event.is_pressed() and event.get_index() == ongoing_drag:
		ongoing_drag = -1
		
func get_value():
	if get_button_pos().length() > threshold:
		return get_button_pos().normalized()
	return Vector2(0, 0)


