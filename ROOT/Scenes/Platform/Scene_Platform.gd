extends Node2D

export(Root.WorldStates) var platform_type = Root.WorldStates.YELLOW

func _ready():
	change_world_state(platform_type)
	
func change_world_state(state):
	
	if platform_type == state:
		$CollisionShape2D_Platform.disabled = true
		$Sprite_Platform.modulate.a8 = 128
	
	else:
		$CollisionShape2D_Platform.disabled = false
		$Sprite_Platform.modulate.a8 = 255
