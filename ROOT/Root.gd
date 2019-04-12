extends Node2D

enum WorldStates {
	YELLOW,
	RED,
	BLUE,
	GREEN
}

func change_world_state(state):

	if not state in WorldStates:
		return
		
	# Further method to change state for each required scene must be called
	