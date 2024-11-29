extends NPC

@onready var first_meetup_dialogue := preload("res://source/actors/npc/police/first_meetup.dialogue")

func interact():
	DialogueManager.show_dialogue_balloon(first_meetup_dialogue, "this_is_a_node_title")
	PlayerConditionals.is_dialogue = true
