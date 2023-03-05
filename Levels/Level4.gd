extends Node2D

onready var main_theme = $MainTheme

func _ready():
	get_tree().paused = false

func _on_MainTheme_finished():
	main_theme.play()
