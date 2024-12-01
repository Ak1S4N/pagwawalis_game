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


func walking_anim() -> void:
	animation_tree.get("parameters/playback").travel("walk")

func idle_anim() -> void:
	animation_tree.get("parameters/playback").travel("idle")
	
func put_away_anim() -> void:
	animation_tree.get("parameters/playback").travel("grab")
	await animation_tree.animation_finished
	idle_anim()
