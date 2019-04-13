extends StaticBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const FRAME_COUNT = 8
const TimeBetweenFrameChange = 0.125
const TimeBetweenDamage = 2.0

var time_since_frame_change = 0.0
var time_since_damage = 0.0

var player = 0
var gave_damage = false

func _ready():
	pass # Replace with function body.
	
func _process(delta):
	time_since_frame_change += delta
	time_since_damage += delta
	
	if time_since_damage > TimeBetweenDamage:
		$CollisionShape2D.set_disabled(false)
		
	if time_since_frame_change > TimeBetweenFrameChange:
		time_since_frame_change = 0.0
		if $Sprite.get_frame() == FRAME_COUNT - 1:
			$Sprite.set_frame(0)
		else:
			$Sprite.frame += 1
		
func get_object_type():
	return Root.ObjectsTypes.Block
	
func get_damage():
	if time_since_damage < TimeBetweenDamage:
		return 0
	else:
		$CollisionShape2D.set_disabled(true)
		time_since_damage = 0.0
		return 1