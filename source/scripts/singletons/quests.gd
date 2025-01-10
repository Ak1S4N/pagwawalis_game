extends Node

signal open_mission(num)
signal open_mission_2(num)

#main game part 1 here
var old_man: Array = ["QUEST_AVA", "QUEST_ONG", "QUEST_DON"]
var current_old_man: String = "QUEST_AVA"

var kid_lary: int = 1
var environmentalist_janna: int = 1
var adventurer_michel: int = 1
var teenager_johnny: int = 1

#mg_2
var gardener_ryan: int = 1
var goddess_bathala: int = 1
var economist_rebecca:int = 1
var biology_student_aki: int = 1
var wandering_child_ryan: int = 1

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


#mg part 2
func open_mis_map_2(value: int) -> void:
	emit_signal("open_mission_2", value)

func set_gardener_ryan(id: int) -> void:
	gardener_ryan = id

func set_goddess_bathala(id: int) -> void:
	goddess_bathala = id

func set_economist_rebecca(id: int) -> void:
	economist_rebecca = id

func set_biology_student_aki(id: int) -> void:
	biology_student_aki = id

func set_wandering_child_ryan(id: int) -> void:
	wandering_child_ryan = id
