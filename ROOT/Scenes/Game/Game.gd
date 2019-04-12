extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func on_main_theme_finished():
	$AudioStreamPlayer.play()

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.connect("finished", self, "on_main_theme_finished")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
