extends Node2D

export var speed = 100
var details = []
var wrong_details = []
var right_details = []

func _ready():
	details = get_tree().get_nodes_in_group("detail")
	wrong_details = get_tree().get_nodes_in_group("wrong")
	right_details = get_tree().get_nodes_in_group("right")

func _process(delta):
	var velocity = Vector2(1, 0)
	velocity = velocity.normalized() * speed
	for detail in details:
		detail.position += velocity * delta
		detail.position.x = clamp(detail.position.x, 200, 1000)
		if detail.position.x == 1000:
			detail.hide()


func _on_Area2D_body_entered(body):
	if body in wrong_details:
		$front_screen/red_glass.show()
	elif body in right_details:
		$front_screen/green_glass.show()


func _on_Area2D_body_exited(body):
	if body in wrong_details:
		$front_screen/red_glass.hide()
	elif body in right_details:
		$front_screen/green_glass.hide()
