extends Node2D

onready var coin: = $CoinUI
onready var coinMusic: = $Coin

export(String, FILE, "*.tscn") var target_level_path = ""

func _on_Coin_body_entered(body):
	if not body is Player: return
	coinMusic.play()
	coin.coins_changed(1)

func _on_Coin2_body_entered(body):
	if not body is Player: return
	coinMusic.play()
	coin.coins_changed(1)

func _on_Coin3_body_entered(body):
	if not body is Player: return
	coinMusic.play()
	coin.coins_changed(1)

func _physics_process(delta):
	if coin.coins == 3:
		Transition.change_scene(target_level_path)
		

