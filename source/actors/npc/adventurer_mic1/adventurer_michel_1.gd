extends NPC

@export var dialogue_sub: DialogueSubManager

func interact() -> void:
	if Quests.adventurer_michel == 1:
		dialogue_sub.adventurer_michel_dial("quest_available")
	elif Quests.adventurer_michel == 3:
		dialogue_sub.adventurer_michel_dial("quest_done")
