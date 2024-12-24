extends EnemyAI
class_name MG2Boss

enum states {
	IDLE,
	SLASH,
	SCREAM
}

var current_state = states.IDLE
var player_in: PlayerFighting

@onready var timer: Timer = $Timer


func slash_attack() -> void:
	if player_in:
		print("attacked")



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('fighter'):
		player_in = body


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group('fighter'):
		player_in = null


func _on_timer_timeout() -> void:
	var rand_i = randi_range(0, 10)
	if rand_i >= 7:
		current_state = states.SCREAM
	else:
		current_state = states.SLASH


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if (anim_name == "slash") or (anim_name == "scream"):
		timer.start()
		current_state = states.IDLE
