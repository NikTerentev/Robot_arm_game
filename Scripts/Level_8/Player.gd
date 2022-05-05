extends Area2D

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		position.x -= 12
	if Input.is_action_pressed("ui_right"):
		position.x += 12
	if Input.is_action_pressed("ui_up"):
		position.y -= 12
	if Input.is_action_pressed("ui_down"):
		position.y += 12
		
	# Фиксируем границы изменения координаты x и y,
	# чтобы машина не выезжала за границу дороги
	
	position.x = clamp(position.x, 662, 1044)
	position.y = clamp(position.y, 107, 786)
