extends NPC

@export var dialogue_sub: DialogueSubManager

func interact() -> void:
	if Quests.environmentalist_janna == 1:
		dialogue_sub.environmentalist_janna_dial("quest_available")
	elif Quests.environmentalist_janna == 3:
		dialogue_sub.environmentalist_janna_dial("quest_done")