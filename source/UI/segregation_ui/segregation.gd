extends Control

@onready var trash_container: HBoxContainer = $TrashContainer
@export var trash_number: int = 5

const TRASH = preload("res://source/UI/segregation_ui/trash/trash.tscn")

func _ready() -> void:
	for i in trash_number:
		var trash_instance = TRASH.instantiate()
		trash_container.add_child(trash_instance)
		trash_instance.gui_input.connect(trash_gui_event)

func trash_gui_event(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("cool")
