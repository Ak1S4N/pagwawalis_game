extends Control

@onready var trash_container: HBoxContainer = $TrashContainer
@export var trash_number: int = 5

const TRASH = preload("res://source/UI/segregation_ui/trash/trash.tscn")

func _ready() -> void:
	for i in trash_number:
		var trash_instance = TRASH.instantiate()
		trash_container.add_child(trash_instance)
