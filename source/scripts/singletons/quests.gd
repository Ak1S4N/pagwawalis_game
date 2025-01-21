extends Node

signal open_mission(num)
signal open_mission_2(num)
signal objectify(npc_name, trash_number, plant_number, quest_id)
signal remove_objective_UI(npc_name)

#main game part 1 here
var old_man: Array = ["QUEST_AVA", "QUEST_ONG", "QUEST_DON"]
var current_old_man: String = "QUEST_AVA"

var map_1: Dictionary = {
	"kid_lary": 1,
	"environmentalist_janna": 1,
	"adventurer_michel": 1,
	"teenager_johnny": 1,
	"old_man_andrew": 1
}
#var kid_lary: int = 1
#var environmentalist_janna: int = 1
#var adventurer_michel: int = 1
#var teenager_johnny: int = 1

#mg_2
var map_2: Dictionary = {
	"gardener_ryan" = 1,
	"goddess_bathala" = 1,
	"economist_rebecca" = 1,
	"biology_student_aki" = 1,
	"wandering_child_ryan" = 1
}
#var gardener_ryan: int = 1
#var goddess_bathala: int = 1
#var economist_rebecca:int = 1
#var biology_student_aki: int = 1
#var wandering_child_ryan: int = 1

#such other needed, like calling signals
func remove_objective(NPC_name: String) -> void:
	emit_signal("remove_objective_UI", NPC_name)


#main game part 1 here
func set_old_man(value: int) -> void:
	map_1["old_man_andrew"] = value
	emit_signal("objectify", "Old Man Andrew", 5, 0, map_1["old_man_andrew"])

func open_mis_old_man(id: int) -> void:
	emit_signal("open_mission", id)

func set_kid_lary(id: int) -> void:
	map_1["kid_lary"] = id
	emit_signal("objectify", "Kid Lary", 5, 0, map_1["kid_lary"])

func set_evironmentalist_janna(id: int) -> void:
	map_1["environmentalist_janna"] = id
	emit_signal("objectify", "Environmentalist Janna", 5, 0, map_1["environmentalist_janna"])

func set_adventurer_michel(id: int) -> void:
	map_1["adventurer_michel"] = id
	emit_signal("objectify", "Adventurer Michel", 5, 0, map_1["adventurer_michel"])

func set_teenager_johnny(id: int) -> void:
	map_1["teenager_johnny"] = id
	emit_signal("objectify", "Teenager Johnny", 5, 0, map_1["teenager_johnny"])

#mg part 2
func open_mis_map_2(value: int) -> void:
	emit_signal("open_mission_2", value)

func set_gardener_ryan(id: int) -> void:
	map_2["gardener_ryan"] = id
	emit_signal("objectify", "Gardener Ryan", 5, 0, map_1["Gardener Ryan"])

func set_goddess_bathala(id: int) -> void:
	map_2["goddess_bathala"] = id
	emit_signal("objectify", "Goddess Bathala", 5, 0, map_1["Goddess Bathala"])

func set_economist_rebecca(id: int) -> void:
	map_2["economist_rebecca"] = id
	emit_signal("objectify", "Economist Rebecca", 5, 0, map_1["Economist Rebecca"])

func set_biology_student_aki(id: int) -> void:
	map_2["biology_student_aki"] = id
	emit_signal("objectify", "Biology Student Aki", 5, 0, map_1["Biology Student Aki"])

func set_wandering_child_ryan(id: int) -> void:
	map_2["wandering_child_ryan"] = id
	emit_signal("objectify", "Wandering Child Ryan", 5, 0, map_1["Wandering Child Ryan"])
