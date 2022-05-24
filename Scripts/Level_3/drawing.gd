extends Node2D

var start = 0
var end = 0
var lines = []
var correct = [
	[1, 13], [2, 7], [3, 5], [4, 9], [6, 10], [8, 15], 
	[11, 16], [12, 14]
]

func _ready():
	pass
	
func draw_circle_arc(center, radius, angle_from, angle_to, color):
	var nb_points = 32
	var points_arc = PoolVector2Array()

	for i in range(nb_points + 1):
		var angle_point = deg2rad(angle_from + i * (angle_to-angle_from) / nb_points - 90)
		points_arc.push_back(center + Vector2(cos(angle_point), sin(angle_point)) * radius)

	for index_point in range(nb_points):
		draw_line(points_arc[index_point], points_arc[index_point + 1], color)

func _draw():
	for line in lines:
		for caple in correct:
			if caple[0] == line[0].number:
				if caple[1] == line[1].number:
					draw_line(line[0].global_position, line[1].global_position, Color(0, 255, 0), 5)
				else:
					draw_line(line[0].global_position, line[1].global_position, Color(255, 0, 0), 5)
	var center = Vector2(200, 200)
	var radius = 80
	var angle_from = 75
	var angle_to = 195
	var color = Color(1.0, 0.0, 0.0)
	#draw_circle_arc(center, radius, angle_from, angle_to, color)

func _process(delta):
	
	if end and start:
		lines.append([start, end])
		update()
		start = Vector2()
		end = Vector2()
