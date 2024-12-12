extends CharacterBody2D
class_name PlayerFighting

@export var speed : float = 16

enum states {
	IDLE,
	WALKING,
	ATTACKING
}

var current_state = states.IDLE
var direction := Vector2.ZERO
@export var can_move: bool = true


func _physics_process(delta: float) -> void:
	direction = Vector2.ZERO
	if can_move:
		if Input.is_action_pressed("down"):
			direction = Vector2.DOWN
		elif Input.is_action_pressed("up"):
			direction = Vector2.UP
		elif Input.is_action_pressed("left"):
			direction = Vector2.LEFT
		elif Input.is_action_pressed("right"):
			direction = Vector2.RIGHT
	velocity = direction * Vector2(speed, speed)
	
	move_and_slide()
