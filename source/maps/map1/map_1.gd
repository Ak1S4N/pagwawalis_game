extends Node2D
class_name map1

@export var paused_menu: PausedMenu
@export var dialogue_sub_man: DialogueSubManager
@onready var cutscene_manager: AnimationPlayer = $CutsceneManager

@onready var actors = get_tree().get_nodes_in_group("actors")

@onready var mis_1: Node2D = $mis_1
@onready var mis_2: Node2D = $mis_2
@onready var mis_3: Node2D = $mis_3
@onready var mis_4: Node2D = $mis_4
@onready var mis_5: Node2D = $mis_5
var cur_mis_id:int = 1

func _ready() -> void:
	dialogue_sub_man.player_dial('start_1')
	PlayerConditionals.score = 0
	PlayerConditionals.movement_tut_done = true
	Quests.open_mission.connect(show_trash)
	PlayerConditionals.back_to_menu.connect(back_to_menu)

func _physics_process(delta: float) -> void:
	for actor in actors:
		if PlayerConditionals.is_dialogue:
			actor.set_physics_process(false)
		else:
			actor.set_physics_process(true)
	
	if PlayerConditionals.map1_finished == false\
	and PlayerConditionals.map1_score >= 5:
		PlayerConditionals.map1_finished = true

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("open_settings"):
		paused_menu.visible = !paused_menu.visible

func show_trash(id: int) -> void:
	cur_mis_id = id
	match cur_mis_id:
		1:
			mis_1.visible = true
		2:
			mis_2.visible = true
		3:
			mis_3.visible = true
		4:
			mis_4.visible = true
		5:
			mis_5.visible = true

func back_to_menu() -> void:
	Transitions.fade_into("res://source/maps/minigame_1/minigame_1.tscn")
