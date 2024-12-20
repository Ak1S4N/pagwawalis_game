extends Node

@onready var sprite_2d_2: Sprite2D = $"../Sprite2D2"
@export var quest_master: NPC

func _process(delta: float) -> void:
	match Quests.current_old_man:
		"QUEST_AVA":
			sprite_2d_2.frame = 5
		"QUEST_ONG":
			sprite_2d_2.frame = 3
		"QUEST_DON":
			sprite_2d_2.frame = 2
	
	
	if quest_master.NPC_score >= 4:
		Quests.set_old_man(2)
