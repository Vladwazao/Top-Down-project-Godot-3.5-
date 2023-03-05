extends Node2D

onready var menuSelect: = $MenuSelect
onready var menuMusic: = $MenuMusic

export(String, FILE, "*.tscn") var level1: = ""
export(String, FILE, "*.tscn") var settings: = ""

func _ready():
	get_tree().paused = false

func _on_Exit_button_down():
	menuSelect.play()

func _on_Exit_button_up():
	get_tree().quit()


func _on_MenuMusic_finished():
	menuMusic.play()


func _on_Settings_button_down():
	menuSelect.play()


func _on_Settings_button_up():
	get_tree().change_scene(settings)


func _on_PlayButton_button_down():
	menuSelect.play()


func _on_PlayButton_button_up():
	get_tree().change_scene(level1)
