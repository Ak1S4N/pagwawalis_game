extends Node

signal open_mission(num)

#main game part 1 here
var old_man: Array = ["QUEST_AVA", "QUEST_ONG", "QUEST_DON"]
var current_old_man: String = "QUEST_AVA"

var kid_lary: int = 1
var environmentalist_janna: int = 1
var adventurer_michel: int = 1
var teenager_johnny: int = 1


#main game part 1 here
func set_old_man(value: int) -> void:
	current_old_man = old_man[value]

func open_mis_old_man(id: int) -> void:
	emit_signal("open_mission", id)

func set_kid_lary(id: int) -> void:
	kid_lary = id

func set_evironmentalist_janna(id: int) -> void:
	environmentalist_janna = id

func set_adventurer_michel(id: int) -> void:
	adventurer_michel = id

func set_teenager_johnny(id: int) -> void:
	teenager_johnny = id
