extends Node2D

export var speed = 300
var details = []
var score = 0
var wrong_details = []
var right_details = []

func _ready():
	GameMusic.play()
	
	details = get_tree().get_nodes_in_group("detail")
	wrong_details = get_tree().get_nodes_in_group("wrong")
	right_details = get_tree().get_nodes_in_group("right")
	$Timer.start()
	$LevelUI.update_score(score)
	
	PathToScene.pathToScene = "res://Scenes/Level2/Factory.tscn"
	$LevelUI.time = 40
	
func _physics_process(delta):
	var velocity = Vector2(1.5, 0.5) 
	var max_x = 700
	velocity = velocity.normalized() * speed
	for detail in get_tree().get_nodes_in_group("detail"):
		detail.apply_central_impulse(velocity * delta)
		detail.position.x = clamp(detail.position.x, 100, max_x + 50)
		if not detail.position.x < max_x:
			detail.queue_free()


func _on_Area2D_body_entered(body):
	if body in get_tree().get_nodes_in_group("wrong"):
		$front_screen/red_glass.show()
	elif body in get_tree().get_nodes_in_group("right"):
		$front_screen/green_glass.show()


func _on_Area2D_body_exited(body):
	if body in get_tree().get_nodes_in_group("wrong"):
		$front_screen/red_glass.hide()
		if score > 0: score -= 1
	elif body in get_tree().get_nodes_in_group("right"):
		$front_screen/green_glass.hide()
		score += 2
	$LevelUI.update_score(score)
	if score >= 20:
		get_tree().change_scene("res://Scenes/Menu/Winning.tscn")


func _on_Timer_timeout():
	$Spawner.spawn()
	$Timer.start()


func _on_down_pressed():
	$RobotSprite.throw_object()
