extends RigidBody2D
export(Root.WorldStates) var acteroid_type = Root.WorldStates.YELLOW

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var __active = true


func world_state_handler(new_state):
	var flag = (new_state == acteroid_type)
	set_active(!flag)


func _set_acteroid_type(type):
	
	acteroid_type = type
	set_active(true)

	if acteroid_type == Root.WorldStates.RED:
		$Sprite.self_modulate = Color(1, 0.2, 0.2)
	elif (acteroid_type == Root.WorldStates.BLUE):
		$Sprite.self_modulate = Color(0.5, 0.5, 1)
	elif (acteroid_type == Root.WorldStates.GREEN):
		$Sprite.self_modulate = Color(0.2, 1, 0.2)
	elif (acteroid_type == Root.WorldStates.YELLOW):
		$Sprite.self_modulate = Color(1, 1, 0.2)


# Called when the node enters the scene tree for the first time.
func _ready():
	_set_rand_asteroid_state()
	angular_velocity = rand_range(0, 5.0);
	Root.connect("state_changed", self, "world_state_handler")


func _on_Button_pressed():
    set_active(!__active)


func get_active():
	return __active


func set_active(flag : bool):
	if flag == __active:
		return

	__active = flag
	$CollisionShape2D.set_disabled(!__active)

	if __active:
		$Sprite.self_modulate.a8 *= 2
	else:
		$Sprite.self_modulate.a8 /= 2
	


func _unhandled_input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_SPACE:
			_set_rand_asteroid_state()


func _set_rand_asteroid_state() -> void:
	var enum_size = int(Root.WorldStates.size())
	var rand_int = randi() % enum_size
	var new_type = Root.WorldStates.values()[rand_int]
	_set_acteroid_type(new_type)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#$Sprite.modulate.a *= 0.0001
