extends Node

signal back_to_menu
var is_dialogue: bool = false
var movement_tut_done: bool = false
var get_out_of_tutorial: bool = false
var score: int = 0

func back_to_main_menu() -> void:
	emit_signal("back_to_menu")
