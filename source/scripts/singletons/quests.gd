extends Node

#main game part 1 here
var old_man: Array = ["QUEST_AVA", "QUEST_ONG", "QUEST_DON"]
var current_old_man: String = "QUEST_AVA"
signal old_man_quest(num)


#main game part 1 here
func set_old_man(value: int) -> void:
	current_old_man = old_man[value]

func open_mis_old_man(id: int) -> void:
	emit_signal("old_man_quest", id)
