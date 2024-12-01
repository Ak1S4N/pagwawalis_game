extends Node
class_name DialogueSubManager

const POLICE = preload("res://source/actors/npc/police/police.dialogue")
const POLICE_COMMANDO = preload("res://source/actors/npc/police_commando/police_commando.dialogue")
const PLAYER = preload("res://source/actors/player/player.dialogue")
const OLD_MAN = preload("res://source/actors/npc/old_man/old_man.dialogue")
const KID_LARY = preload("res://source/actors/npc/kid_lary/kid_lary.dialogue")
const ENVIRONMENTALIST_JANNA = preload("res://source/actors/npc/environmentalist_janna/environmentalist_janna.dialogue")
const ADVENTURER_MICHEL = preload("res://source/actors/npc/adventurer_mic1/adventurer_michel.dialogue")


func police_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(POLICE, title)
	PlayerConditionals.is_dialogue = true

func police_commando_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(POLICE_COMMANDO, title)
	PlayerConditionals.is_dialogue = true

func player_dial(title: String) -> void:
	DialogueManager.show_dialogue_balloon(PLAYER, title)
	PlayerConditionals.is_dialogue = true

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
	pass
