extends AnimationPlayer

@onready var bus: Sprite2D = $"../bus"

func _ready() -> void:
	Cutscenes.mg_cutscene_1.connect(cutscene_1)

func cutscene_1() -> void:
	play("cut_1")
	await animation_finished
	bus.visible = false
	
