extends CanvasLayer

@export var player: CharacterBody2D
@export var tilemap_layers: Node2D

@onready var sub_viewport: SubViewport = $SubViewportContainer/SubViewport

var MinimapPlayer
var camera2d : Camera2D = Camera2D.new()

func _ready() -> void:
	MinimapPlayer = player.duplicate()
	camera2d.set_zoom(Vector2(0.5, 0.5))
	
	if MinimapPlayer.has_node("Camera2D"):
		var old_camera = MinimapPlayer.get_node("Camera2D")
		MinimapPlayer.remove_child(old_camera)
	
	sub_viewport.add_child(tilemap_layers.duplicate())
	MinimapPlayer.add_child(camera2d)
	sub_viewport.add_child(MinimapPlayer)
	

func _process(delta: float) -> void:
	MinimapPlayer.position = player.position
