extends Node
class_name AnimationManager

var looking_at: Vector2

@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"
@onready var animation_tree: AnimationTree = $"../AnimationTree"
@onready var player: Player = $".."


func _process(delta: float) -> void:
	animation_tree.set("parameters/idle/blend_position", looking_at)
	animation_tree.set("parameters/walk/blend_position", looking_at)
	animation_tree.set("parameters/grab/blend_position", looking_at)
	
	if not player.is_moving:
		animation_tree.get("parameters/playback").travel("idle")
	else:
		animation_tree.get("parameters/playback").travel("walk")
	


#func play_animation() -> void:
	#if player.is_moving:
		#moving_animation()
	#else:
		#idle_animation()
	#
#
#func moving_animation() -> void:
	#match looking_at:
		#Vector2.DOWN:
			#animation_player.play("walk_front")
		#Vector2.UP:
			#animation_player.play("walk_back")
		#Vector2.LEFT:
			#animation_player.play("walk_left")
		#Vector2.RIGHT:
			#animation_player.play("walk_right")
#
#func idle_animation() -> void:
	#pass
