extends CanvasLayer

export(String, FILE, "*.tscn") var new_game: = ""
export(String, FILE, "*.tscn") var main_menu: = ""

func _input(event):
	if Input.is_action_just_pressed("pause"):
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state

func _on_Continue_button_up():
	var new_pause_state = false
	get_tree().paused = new_pause_state
	visible = new_pause_state

func _on_NewGame_button_up():
	get_tree().change_scene(new_game)

func _on_Mainmenu_button_up():
	get_tree().change_scene(main_menu)

func _on_Exit_button_up():
	get_tree().quit()
