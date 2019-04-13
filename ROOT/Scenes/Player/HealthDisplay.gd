extends Position2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(NodePath) var path_to_player_controller
onready var player_controller = get_node(path_to_player_controller)

export(Texture) var heart_texture
export(Vector2) var heart_scale = Vector2(0.1, 0.1)
export(Vector2) var heart_offset = Vector2(50, 0)

var sprites = []

# Called when the node enters the scene tree for the first time.
func _ready():
	
	for i in range(player_controller.player_health):
		var sprite = Sprite.new()
		sprite.texture = heart_texture
		sprite.scale = heart_scale
		sprite.position = heart_offset * i
		add_child(sprite)
		sprites.append(sprite)

func _process(delta):
	for sprite in sprites:
		sprite.visible = false
	
	for i in range(player_controller.player_health):
		sprites[i].visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
