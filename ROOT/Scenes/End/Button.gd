extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("button_up", self, "on_button_up")

func on_button_up():
	get_tree().change_scene("res://Scenes/Start/Start.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
