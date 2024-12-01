extends Node
class_name quest_manager

@onready var sprite_2d: Sprite2D = $"../Sprite2D2"

func _process(delta: float) -> void:
	if not PlayerConditionals.movement_tut_done:
		sprite_2d.frame = 5
	elif PlayerConditionals.movement_tut_done\
	and PlayerConditionals.score < 4:
		sprite_2d.frame = 3
	elif PlayerConditionals.score >= 4 and\
	PlayerConditionals.movement_tut_done:
		sprite_2d.frame = 2
