extends CharacterBody2D
class_name EnemyAI

@export var health_manager: HealthManager

func _ready() -> void:
	health_manager.occur_death.connect(self_delete)
	

func deal_damage(damage: int) -> void:
	health_manager.get_damage(damage)

func self_delete() -> void:
	self.queue_free()
