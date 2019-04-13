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

export(NodePath) var path_to_camera
onready var camera = get_node(path_to_camera)

export(NodePath) var path_to_run_animation
onready var run_animation = get_node(path_to_run_animation)

export(NodePath) var path_to_jump_animation
onready var jump_animation = get_node(path_to_jump_animation)

export(NodePath) var path_to_idle_animation
onready var idle_animation = get_node(path_to_idle_animation)

onready var current_animation = idle_animation

export(NodePath) var path_to_flash_animation
onready var flash_animation = get_node(path_to_flash_animation)
export(int) var flash_frames_per_second = 15

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
var flash_timer
var player_health = 3

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
	
	flash_timer = Timer.new()
	flash_timer.connect("timeout", self, "flash_tick")
	add_child(flash_timer)
	flash_timer.wait_time = 1.0 / flash_frames_per_second
	flash_timer.start()
	
	set_state(State.Idle)
	
	Root.connect("state_changed", self, "world_state_handler")
	
	var root = get_node("/root/Root")
	self.connect("player_dead", Root, "_on_player_dead")
	
func _process(delta):
	motion.y += GRAVITY
	
	IDLE_TIME += delta
	if IDLE_TIME < IDLE_DURARION:
		return
	
	motion.x = SPEED
	camera.position.x += SPEED * delta
	
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
		
func flash_tick():
	if flash_animation.visible:
		var current_flash_frames_count = flash_animation.vframes * flash_animation.hframes
		if flash_animation.frame < current_flash_frames_count - 2:
			flash_animation.frame += 2
		else:
			flash_animation.frame = 0
			flash_animation.visible = false

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

func _start_flash():
	flash_animation.frame = 0
	flash_animation.visible = true

func world_state_handler(new_state):
	
	if new_state == Root.WorldStates.RED:
		flash_animation.modulate = Color(1, 0.2, 0.2)
	elif new_state == Root.WorldStates.GREEN:
		flash_animation.modulate = Color(0.2, 1, 0.2)
	elif new_state == Root.WorldStates.YELLOW:
		flash_animation.modulate = Color(1, 1, 0.2)
	elif new_state == Root.WorldStates.BLUE:
		flash_animation.modulate = Color(0.2, 0.2, 1)
	
	_start_flash()

func get_object_type():
	return Root.ObjectsTypes.Player
