extends Node
class_name DialogueSubManager

#tut
const POLICE = preload("res://source/actors/npc/police/police.dialogue")
const POLICE_COMMANDO = preload("res://source/actors/npc/police_commando/police_commando.dialogue")

#mg_1
const PLAYER = preload("res://source/actors/player/player.dialogue")
const OLD_MAN = preload("res://source/actors/npc/old_man/old_man.dialogue")
const KID_LARY = preload("res://source/actors/npc/kid_lary/kid_lary.dialogue")
const ENVIRONMENTALIST_JANNA = preload("res://source/actors/npc/environmentalist_janna/environmentalist_janna.dialogue")
const ADVENTURER_MICHEL = preload("res://source/actors/npc/adventurer_mic1/adventurer_michel.dialogue")
const TEENAGER_JOHNNY = preload("res://source/actors/npc/teenager_johnny/teenager_johnny.dialogue")

const BUS = preload("res://source/actors/inter_objects/bus/bus.dialogue")

#map_2
const GARDENER_RYAN = preload("res://source/actors/npc/map_2/gardener_ryan/gardener_ryan.dialogue")
const ECONOMIST_REBECCA = preload("res://source/actors/npc/map_2/economist_rebecca/economist_rebecca.dialogue")
const GODDESS_BATHALA = preload("res://source/actors/npc/map_2/goddess_bathala/goddess_bathala.dialogue")
const BIOLOGY_STUDENT_AKI = preload("res://source/actors/npc/map_2/biology_student_aki/biology_student_aki.dialogue")


#tutorial
func police_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(POLICE, title)
	PlayerConditionals.is_dialogue = true

func police_commando_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(POLICE_COMMANDO, title)
	PlayerConditionals.is_dialogue = true

func player_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(PLAYER, title)
	PlayerConditionals.is_dialogue = true

#mg_1
func old_man_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(OLD_MAN, title)
	PlayerConditionals.is_dialogue = true

func kid_lary_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(KID_LARY, title)
	PlayerConditionals.is_dialogue = true

func environmentalist_janna_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(ENVIRONMENTALIST_JANNA, title)
	PlayerConditionals.is_dialogue = true

func adventurer_michel_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(ADVENTURER_MICHEL, title)
	PlayerConditionals.is_dialogue = true

func teenager_johnny_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(TEENAGER_JOHNNY, title)
	PlayerConditionals.is_dialogue = true

func bus_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(BUS, title)
	PlayerConditionals.is_dialogue = true


#mg_2
func gardener_ryan_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(GARDENER_RYAN, title)
	PlayerConditionals.is_dialogue = true

func goddess_bathala_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(GODDESS_BATHALA, title)
	PlayerConditionals.is_dialogue = true

func economist_rebecca_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(ECONOMIST_REBECCA, title)
	PlayerConditionals.is_dialogue = true

func biology_student_aki_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(BIOLOGY_STUDENT_AKI, title)
	PlayerConditionals.is_dialogue = true
