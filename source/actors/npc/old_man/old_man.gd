extends NPC

@export var dialogue_sub: DialogueSubManager
@export var map_1: map1

func interact() -> void:
	match map_1.cur_mis_id:
		1:
			if Quests.current_old_man == "QUEST_AVA":
				dialogue_sub.old_man_dial("quest_available_1")
			elif Quests.current_old_man == "QUEST_DON":
				dialogue_sub.old_man_dial("quest_done_1")
		2:
			if Quests.current_old_man == "QUEST_AVA":
				dialogue_sub.old_man_dial("quest_available_2")
			elif Quests.current_old_man == "QUEST_DON":
				dialogue_sub.old_man_dial("quest_done_2")
		3:
			if Quests.current_old_man == "QUEST_DON":
				dialogue_sub.old_man_dial("quest_done_3")
