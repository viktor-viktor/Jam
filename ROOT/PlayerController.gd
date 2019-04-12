extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const UP = Vector2(0, -1)

const SPEED = 400
const GRAVITY = 80
const JUMP_HEIGHT = -700
const JUMP_FORCE = -180
const JUMP_DURATION = 0.08

var motion = Vector2()
var is_jump_started = false
var current_jump_time_left = JUMP_DURATION

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	motion.y += GRAVITY
	
	motion.x = 0
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	if Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	
	var is_on_floor = is_on_floor()
	
	if is_on_floor:	
		current_jump_time_left = JUMP_DURATION	
	
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
	else:
		
		current_jump_time_left += delta 
		
		if Input.is_action_pressed("ui_up"):
			motion.y += JUMP_FORCE * JUMP_DURATION / current_jump_time_left
	
	motion = move_and_slide(motion, UP)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
