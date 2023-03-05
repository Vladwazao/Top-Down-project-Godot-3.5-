extends Area2D

func _on_Coin_body_entered(body):
	if not body is Player: return
	queue_free()
