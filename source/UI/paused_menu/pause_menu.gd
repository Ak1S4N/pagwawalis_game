extends Control
class_name PausedMenu


func _on_resume_game_button_up() -> void:
	visible = false


func _on_main_menu_button_up() -> void:
	Transitions.fade_into("res://source/UI/main_menu/main_menu.tscn")



func _on_quit_button_up() -> void:
	Transitions.fade_to_exit()
