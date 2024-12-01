extends Node
class_name DialogueSubManager

const POLICE = preload("res://source/actors/npc/police/police.dialogue")
const POLICE_COMMANDO = preload("res://source/actors/npc/police_commando/police_commando.dialogue")
const PLAYER = preload("res://source/actors/player/player.dialogue")
const OLD_MAN = preload("res://source/actors/npc/old_man/old_man.dialogue")


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
