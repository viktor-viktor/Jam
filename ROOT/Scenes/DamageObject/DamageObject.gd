extends StaticBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var player = 0
var gave_damage = false

func _ready():
	pass # Replace with function body.
	

func get_object_type():
	return Root.ObjectsTypes.Block
	
func get_damage():
	if gave_damage:
		return 0
	else:
		gave_damage = true
		return 1