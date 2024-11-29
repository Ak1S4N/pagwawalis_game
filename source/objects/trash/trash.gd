extends StaticBody2D

@onready var sprite_2d: Sprite2D = $Sprite2D

func _ready() -> void:
	randomize()
	sprite_2d.frame = randi_range(0, 2)

func interact() -> void:
	queue_free()
