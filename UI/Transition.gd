extends CanvasLayer

onready var animation_player = $AnimationPlayer

func change_scene(target):
	animation_player.play("dissolve")
	yield(animation_player, "animation_finished")
	get_tree().change_scene(target)
	animation_player.play_backwards("dissolve")
