extends Node2D

const POLICE = preload("res://source/actors/npc/police/police.dialogue")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(POLICE, "starting_tutorial")
