extends NPC

@export var dialogue_sub: DialogueSubManager

func interact() -> void:
	if Quests.kid_lary == 1:
		dialogue_sub.kid_lary_dial('quest_available')
	elif Quests.kid_lary == 3:
		dialogue_sub.kid_lary_dial('quest_done')
