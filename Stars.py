from godot import exposed, export
from godot import *


@exposed
class Stars(Node):

	# member variables here, example:
	a = [1, 2, 3]

	def _ready(self):
		print('python')
