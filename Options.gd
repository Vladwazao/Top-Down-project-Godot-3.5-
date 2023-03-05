extends Node2D

onready var menuSelect: = $MenuSelect
onready var menuMusic: = $MenuMusic

export(String, FILE, "*.tscn") var menu: = ""

func _on_BackButton_button_down():
	menuSelect.play()

func _on_BackButton_button_up():
	get_tree().change_scene(menu)

func _on_Exit_button_down():
	menuSelect.play()

func _on_Exit_button_up():
	get_tree().quit()

func _on_HSlider_value_changed(value):
	if value <= -30:
		AudioServer.set_bus_mute(0, true)
	else:
		AudioServer.set_bus_mute(0, false)
	AudioServer.set_bus_volume_db(0, value)
