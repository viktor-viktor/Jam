extends Node2D

enum WorldStates {
	YELLOW,
	RED,
	BLUE,
	GREEN
}

signal state_changed

func change_world_state(state):

	emit_signal("state_changed")
	if not state in WorldStates:
		return
	# Further method to change state for each required scene must be called
	
	
func _unhandled_input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_S:
            change_world_state(WorldStates.YELLOW)