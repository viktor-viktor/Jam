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
	Block
}

func change_world_state(state):

	emit_signal("state_changed", state)
	if not state in WorldStates:
		return
	# Further method to change state for each required scene must be called
	
func _process(delta):
	_check_input()

func _check_input():
	if Input.is_action_just_pressed("SetGreen"):
		change_world_state(WorldStates.GREEN)
	elif Input.is_action_just_pressed("SetBlue"):
		change_world_state(WorldStates.BLUE)
	elif Input.is_action_just_pressed("SetRed"):
		change_world_state(WorldStates.RED)
	elif Input.is_action_just_pressed("SetYellow"):
		change_world_state(WorldStates.YELLOW)
		

func _on_player_dead():
	pass #to be implemented
	
func _ready():
	#var player = get_node("Player")
	#var player = $Game.Player
	#player.connect("player_dead", self, _on_player_dead())
	pass