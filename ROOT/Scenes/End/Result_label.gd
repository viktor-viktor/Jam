extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	Root.connect("end_game", self, "on_end_game")

func on_end_game(result):
	if result:
		self.text = "WIN"
	else:
		self.text = "LOSE"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
