extends Node2D

enum WorldStates {
	YELLOW,
	RED,
	BLUE,
	GREEN
}


signal state_changed(new_state)

enum ObjectsTypes{
	Ground,
	Commet,
	Platform,
	Block,
	Player
}

func change_world_state(state):

	emit_signal("state_changed", state)
	if not state in WorldStates:
		return
	# Further method to change state for each required scene must be called
	
func _unhandled_input(event):
	if event is InputEventJoypadButton and event.pressed:
		if event.get_button_index() == JOY_XBOX_A:
			change_world_state(WorldStates.GREEN)
		elif event.get_button_index() == JOY_XBOX_X:
			change_world_state(WorldStates.BLUE)
		elif event.get_button_index() == JOY_XBOX_Y:
			change_world_state(WorldStates.YELLOW)
		elif event.get_button_index() == JOY_XBOX_B:
			change_world_state(WorldStates.RED)
	
	
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_ESCAPE:
            get_tree().quit()
		
		elif event.scancode == KEY_Q:
            change_world_state(WorldStates.YELLOW)
		elif event.scancode == KEY_W:
			change_world_state(WorldStates.RED)
		elif event.scancode == KEY_E:
			change_world_state(WorldStates.BLUE)
		elif event.scancode == KEY_R:
			change_world_state(WorldStates.GREEN)

func _on_player_dead():
	get_tree().change_scene("res://Scenes/Start/Start.tscn")
	
func _ready():
	pass
