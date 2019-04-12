extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

export(NodePath) var ball = null
onready var ball_node = get_node(ball)

var is_triggered = false
func _on_Area2D_body_entered(body):
	if not is_triggered and body.is_in_group("player") and ball:
		ball_node.start()
