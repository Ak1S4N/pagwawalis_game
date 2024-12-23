extends EnemyAI
class_name MG2Boss

enum states {
	IDLE,
	SLASH,
	SCREAM
}

var current_state = states.IDLE
var player_in: PlayerFighting

func slash_attack() -> void:
	if player_in:
		print("attacked")



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.get_class() == 'PlayerFighting':
		player_in = body


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.get_class() == "PlayerFighting":
		player_in = null
