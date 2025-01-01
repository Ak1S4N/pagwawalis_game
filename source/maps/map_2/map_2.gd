extends Node2D

@onready var pause_menu: PausedMenu = $CanvasLayer/pause_menu

@onready var mis_1: Node2D = $mis_list/mis1
@onready var mis_2: Node2D = $mis_list/mis2
@onready var mis_3: Node2D = $mis_list/mis3
@onready var mis_4: Node2D = $mis_list/mis4
@onready var mis_5: Node2D = $mis_list/mis5

@export var dialogue_sub: DialogueSubManager

func _ready() -> void:
	dialogue_sub.player_dial('start_2')
	Quests.open_mission_2.connect(open_mission)
	PlayerConditionals.movement_tut_done = true

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("open_settings"):
		pause_menu.visible = !pause_menu.visible
	

func open_mission(num: int) -> void:
	match num:
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
