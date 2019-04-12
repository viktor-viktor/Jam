extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.change_player_health(10000)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
