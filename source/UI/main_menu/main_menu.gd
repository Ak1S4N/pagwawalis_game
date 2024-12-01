extends Node2D



func _on_tutorial_button_up() -> void:
	Transitions.fade_into("res://source/maps/tutorial/tutorial.tscn")


func _on_main_game_button_up() -> void:
	Transitions.fade_into("res://source/maps/map1/map_1.tscn")


func _on_quit_button_down() -> void:
	Transitions.fade_to_exit()
	
