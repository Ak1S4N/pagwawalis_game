extends NPC

@export var dialogue_sub: DialogueSubManager

func interact() -> void:
	if Quests.current_old_man == "QUEST_AVA":
		dialogue_sub.old_man_dial("quest_available_1")
	elif Quests.current_old_man == "QUEST_DON":
		dialogue_sub.old_man_dial("quest_done_1")
