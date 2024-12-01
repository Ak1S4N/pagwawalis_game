extends StaticBody2D

signal not_done_yet(title)

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

func _ready() -> void:
	randomize()
	sprite_2d.frame_coords.y = randi_range(2, 5)

func interact() -> void:
	if PlayerConditionals.movement_tut_done:
		audio_stream_player.play()
		await audio_stream_player.finished
		PlayerConditionals.score += 1
		queue_free()
	else:
		emit_signal("not_done_yet", "not_finished_tutorial")
