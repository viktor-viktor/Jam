extends Node2D

var gl_state = 2
	
func change_world_state(state):
	
	if gl_state == state:
		$CollisionShape2D_Platform.disabled = true
		$Sprite_Platform.modulate.a8 = 128
	
	else:
		$CollisionShape2D_Platform.disabled = false
		$Sprite_Platform.modulate.a8 = 255
