extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

enum State{
	Idle,
	RunRight,
	Jump	
}

const UP = Vector2(0, -1)

export(NodePath) var path_to_run_animation
onready var run_animation = get_node(path_to_run_animation)

export(NodePath) var path_to_jump_animation
onready var jump_animation = get_node(path_to_jump_animation)

export(NodePath) var path_to_idle_animation
onready var idle_animation = get_node(path_to_idle_animation)

onready var current_animation = idle_animation

########################## CONST ##############################
const SPEED = 400
const GRAVITY = 80
const JUMP_HEIGHT = -600
const JUMP_FORCE = -180
const JUMP_DURATION = 0.08
const IDLE_DURARION = 1.5
var IDLE_TIME = 0.0
export(int) var FRAMES_PER_SECOND = 8


########################### VAR ###############################
var motion = Vector2()
var current_jump_time_left = JUMP_DURATION

var player_state = null

var timer
var player_health = 5

########################### SIGNALS ############################
signal player_dead	

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("player")
	timer = Timer.new()
	timer.connect("timeout", self, "tick")
	add_child(timer)
	timer.wait_time = 1.0 / FRAMES_PER_SECOND
	timer.start()
	set_state(State.Idle)
	
	var root = get_node("/root/Root")
	#root.connect("player_dead", self, "_on_player_dead")
	
func _process(delta):
	motion.y += GRAVITY
	
	IDLE_TIME += delta
	if IDLE_TIME < IDLE_DURARION:
		return
	
	motion.x = SPEED
	
	var is_on_floor = is_on_floor()
	
	if is_on_floor:	
		current_jump_time_left = JUMP_DURATION	
	
		if Input.is_action_pressed("Jump"):
			motion.y = JUMP_HEIGHT
			player_state = set_state(State.Jump)
		elif motion.x != 0.0:
			player_state = set_state(State.RunRight)
		else:
			player_state = set_state(State.Idle)
	else:
		
		current_jump_time_left += delta 
		
		if Input.is_action_pressed("Jump"):
			motion.y += JUMP_FORCE * JUMP_DURATION / current_jump_time_left
	
	motion = move_and_slide(motion, UP)
	
	var collision_count = get_slide_count()
	for i in  collision_count:
		var collision_info = get_slide_collision(i)
		if collision_info:
			if collision_info.collider.has_method("get_object_type"):
				var type = collision_info.collider.get_object_type()
				
				if type == Root.ObjectsTypes.Commet:
					change_player_health(100000)
				elif type == Root.ObjectsTypes.Block:
					change_player_health(collision_info.collider.get_damage())

func change_player_health(damage):
	player_health -= damage
	
	if player_health <= 0:
		emit_signal("player_dead")

func tick():
	var current_frames_count = current_animation.vframes * current_animation.hframes
	if current_animation.frame < current_frames_count - 1:
		current_animation.frame += 1
	else:
		current_animation.frame = 0

func set_state(state):
	var old_state = player_state
	player_state = state
	if old_state != state:
		on_state_changed(state)

func on_state_changed(state):
	
	if current_animation:
		current_animation.visible = false
	
	if state == State.RunRight:
		current_animation = run_animation
	elif state == State.Idle:
		current_animation = idle_animation
	elif state == State.Jump:
		current_animation = jump_animation
		
	current_animation.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
