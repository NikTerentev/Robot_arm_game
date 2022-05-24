extends Node2D


func _ready():
	PathToScene.pathToScene = "res://Scenes/Level3/MainScene.tscn"
	$curcle.set_pickable(true)
	$Stand.stop()


func _on_curcle_mouse_entered():
	print(1)


func _on_curcle_mouse_exited():
	pass # Replace with function body.
