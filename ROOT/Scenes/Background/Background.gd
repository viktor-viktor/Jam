extends Node2D
export(Root.WorldStates) var acteroid_type = Root.WorldStates.YELLOW

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func world_state_handler(new_state):
	
	if new_state == Root.WorldStates.RED:
		$ParallaxBackground/Back/Sprite.modulate = Color(1, 0.2, 0.2)
	elif new_state == Root.WorldStates.GREEN:
		$ParallaxBackground/Back/Sprite.modulate = Color(0.2, 1, 0.2)
	elif new_state == Root.WorldStates.YELLOW:
		$ParallaxBackground/Back/Sprite.modulate = Color(1, 1, 0.2)
	elif new_state == Root.WorldStates.BLUE:
		$ParallaxBackground/Back/Sprite.modulate = Color(0.2, 0.2, 1)


# Called when the node enters the scene tree for the first time.
func _ready():
	world_state_handler(Root.WorldStates.YELLOW)
	Root.connect("state_changed", self, "world_state_handler")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass