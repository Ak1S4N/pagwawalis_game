extends CharacterBody2D
class_name Player

var input_dir: Vector2
@export var tile_size: float = 16
var is_moving: bool = false


@onready var ray_cast_2d: RayCast2D = $RayCast2D
@onready var animation_manager: AnimationManager = $animation_manager


func _physics_process(delta: float) -> void:
	input_dir = Vector2.ZERO
	if Input.is_action_pressed("down"):
		input_dir = Vector2.DOWN
		move()
	elif Input.is_action_pressed("up"):
		input_dir = Vector2.UP
		move()
	elif Input.is_action_pressed("left"):
		input_dir = Vector2.LEFT
		move()
	elif Input.is_action_pressed("right"):
		input_dir = Vector2.RIGHT
		move()
	move_and_slide()

func move():
	if input_dir:
		ray_cast_2d.target_position = input_dir * Vector2(32,32)
		if ray_cast_2d.get_collider()\
			and (input_dir * Vector2(32,32)) == ray_cast_2d.target_position:
				return
		elif not ray_cast_2d.get_collider():
			if is_moving == false:
					animation_manager.looking_at = input_dir
					is_moving = true
					var tween = create_tween()
					tween.tween_property(self, "position", position + (input_dir * tile_size), .2)
					tween.tween_callback(move_false)
	

func move_false():
	is_moving = false
