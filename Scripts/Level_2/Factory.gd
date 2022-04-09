extends Node2D

export var speed = 400
var details = []
var wrong_details = []
var right_details = []

func _ready():
	details = get_tree().get_nodes_in_group("detail")
	wrong_details = get_tree().get_nodes_in_group("wrong")
	right_details = get_tree().get_nodes_in_group("right")
	$Timer.start()
	
func _physics_process(delta):
	var velocity = Vector2(1, 0) 
	velocity = velocity.normalized() * speed
	for detail in get_tree().get_nodes_in_group("detail"):
		detail.apply_central_impulse(velocity * delta)
		detail.position.x = clamp(detail.position.x, 100, 800)
		if detail.position.x == 800:
			detail.hide()


func _on_Area2D_body_entered(body):
	if body in get_tree().get_nodes_in_group("wrong"):
		$front_screen/red_glass.show()
	elif body in get_tree().get_nodes_in_group("right"):
		$front_screen/green_glass.show()


func _on_Area2D_body_exited(body):
	if body in get_tree().get_nodes_in_group("wrong"):
		$front_screen/red_glass.hide()
	elif body in get_tree().get_nodes_in_group("right"):
		$front_screen/green_glass.hide()


func _on_Timer_timeout():
	$Spawner.spawn()
	$Timer.start()