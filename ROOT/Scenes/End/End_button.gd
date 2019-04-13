extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("button_up", self, "on_button_up")

func _start_scene():
	get_tree().change_scene("res://Root.tscn")

func on_button_up():
		_start_scene()

func _unhandled_input(event):
	if event.is_action_pressed("ui_accept"):
		_start_scene()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
