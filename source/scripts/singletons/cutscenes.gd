extends Node

#tutorial part here
signal police_commando_entrance

#main game part 1 here
signal mg_cutscene_1

#tutorial part here
func tut_cut_1() -> void:
	emit_signal("police_commando_entrance")

#main game part 1 here
func mg_cut_1() -> void:
	emit_signal("mg_cutscene_1")
