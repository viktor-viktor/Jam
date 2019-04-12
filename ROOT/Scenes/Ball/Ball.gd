extends RigidBody2D
export(Root.WorldStates) var platform_type = Root.WorldStates.YELLOW

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var __active = true

func your_handler():
   _on_Button_pressed()

# Called when the node enters the scene tree for the first time.
func _ready():
	Root.connect("state_changed", self, "your_handler")
	pass # Replace with function body.


func _set_platform_type(type):
	platform_type = type
	$Sprite.self_modulate = Color(0.5, 1, 0.5)
	pass


func _on_Button_pressed():
    set_active(!__active)

func _validate_position(pos, bound):
	if pos < 0:
		pos = bound
	elif pos > bound:
		pos = 0
	
	return pos

func _unhandled_input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_A:
            _on_Button_pressed()
			
		elif event.scancode == KEY_Q:
			$Sprite.self_modulate = Color(0.5, 1, 0.5)
		elif event.scancode == KEY_W:
			$Sprite.self_modulate = Color(1, 0.5, 0.5)
		

func set_active(flag : bool):
	if flag == __active:
		return
	
	__active = flag
	$CollisionShape2D.set_disabled(!__active)

	if __active:
		$Sprite.self_modulate.a8 *= 2
	else:
		$Sprite.self_modulate.a8 /= 2
	

func get_active():
	return __active


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#$Sprite.modulate.a *= 0.0001

func _integrate_forces(state):
	var trans = state.get_transform()
	var vieport_size = get_viewport().get_visible_rect().size
	
	trans.origin.x = _validate_position(trans.origin.x, vieport_size.x)
	trans.origin.y = _validate_position(trans.origin.y, vieport_size.y)

	state.set_transform(trans)
