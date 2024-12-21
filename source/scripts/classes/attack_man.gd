extends Node
class_name AttackManager

@export var damage: int = 3

@export var animation_man: Node

var current_enemy: EnemyAI

var can_attack: bool = true

func _process(delta: float) -> void:
	deal_damage()

func deal_damage() -> void:
	if can_attack:
		if Input.is_action_just_pressed("attack") and current_enemy:
			current_enemy.deal_damage(damage)
			can_attack = false


func _on_attack_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemy"):
		current_enemy = body


func _on_attack_area_body_exited(body: Node2D) -> void:
	if body.is_in_group("enemy") and current_enemy == body:
		current_enemy = null
