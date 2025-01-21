extends PanelContainer
class_name TrashContainer


func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("cool")


func _on_mouse_entered() -> void:
	print("uncool")
