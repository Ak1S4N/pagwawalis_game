extends Node2D

@export var mg_bathala: StaticBody2D

func _ready() -> void:
	for i in get_tree().get_nodes_in_group("enemy"):
		i.set_physics_process(false)
	MinigameSettings.start_signal.connect(start_minigame)
	if mg_bathala.has_method("start_dialogue"):
		mg_bathala.start_dialogue("start_mini_1")

func start_minigame() -> void:
	for i in get_tree().get_nodes_in_group("enemy"):
		if i.has_method("timer_start"):
			i.timer_start()
