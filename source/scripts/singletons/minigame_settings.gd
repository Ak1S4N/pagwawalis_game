extends Node

signal start_signal

func minigame_start() -> void:
	emit_signal("start_signal")
