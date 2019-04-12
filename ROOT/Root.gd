extends Node2D

var WORLD_STATES = ['YELLOW', 'RED', 'BLUE', 'GREEN']

func change_world_state(state):

	if not state in WORLD_STATES:
		return
		
	# Further method to change state for each required scene must be called
	