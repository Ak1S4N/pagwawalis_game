extends CanvasLayer
class_name MinimapUI

@export var player: CharacterBody2D
@export var tilemap_layers: Node2D
@export var NPCS: Array[NPC]

@onready var sub_viewport: SubViewport = $SubViewportContainer/SubViewport

var MinimapPlayer
var camera2d : Camera2D = Camera2D.new()

func _ready() -> void:
	MinimapPlayer = player.duplicate()
	camera2d.set_zoom(Vector2(0.5, 0.5))
	for npc in NPCS:
		var new_npc = npc.duplicate()
		new_npc.position = npc.position
		sub_viewport.add_child(new_npc)
		if npc.NPC_score >= 5:
			new_npc.call_deferred('queue_free')

	if MinimapPlayer.has_node("Camera2D"):
		var old_camera = MinimapPlayer.get_node("Camera2D")
		MinimapPlayer.remove_child(old_camera)

	sub_viewport.add_child(tilemap_layers.duplicate())
	MinimapPlayer.add_child(camera2d)
	sub_viewport.add_child(MinimapPlayer)

func _process(delta: float) -> void:
	MinimapPlayer.position = player.position
