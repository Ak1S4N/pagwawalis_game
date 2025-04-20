extends NPC

@export var dialogue_sub: DialogueSubManager

func interact() -> void:
	if Quests.map_1["traveler_jimbei"] == 1:
		dialogue_sub.traveler_jimbei_dial("quest_available")
	elif Quests.map_1["traveler_jimbei"] >= 3:
		dialogue_sub.traveler_jimbei_dial("quest_done")
