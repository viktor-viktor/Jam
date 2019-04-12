extends Node2D

export(Root.WorldStates) var platform_type = Root.WorldStates.YELLOW

func _ready():
	Root.connect("state_changed", self, "change_world_state")
	_set_platform_type(platform_type)
	pass#change_world_state(platform_type)
	
func get_object_type():
	return Root.ObjectsTypes.Platform


func change_world_state(state):
	var flag = (state == platform_type)
	set_active(!flag)


func _set_platform_type(state):
	platform_type = state
	set_active(true)

	if platform_type == Root.WorldStates.RED:
		$Sprite_Platform.self_modulate = Color(1, 0.2, 0.2)
	elif (platform_type == Root.WorldStates.BLUE):
		$Sprite_Platform.self_modulate = Color(0.5, 0.5, 1)
	elif (platform_type == Root.WorldStates.GREEN):
		$Sprite_Platform.self_modulate = Color(0.2, 1, 0.2)
	elif (platform_type == Root.WorldStates.YELLOW):
		$Sprite_Platform.self_modulate = Color(1, 1, 0.2)



func set_active(flag : bool):
	if flag != $CollisionShape2D_Platform.disabled:
		return

	$CollisionShape2D_Platform.set_disabled(!flag)

	if $CollisionShape2D_Platform.disabled:
		$Sprite_Platform.self_modulate.a8 /= 2
	else:
		$Sprite_Platform.self_modulate.a8 *= 2
