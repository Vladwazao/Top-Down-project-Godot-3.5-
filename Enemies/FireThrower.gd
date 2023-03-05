extends StaticBody2D

onready var fire = $Fire
onready var fireAnimation = $Fire/AnimationPlayer
onready var animation = $AnimatedSprite


func _ready():
	fire.hide()
	animation.play("Idle")

func throw_fire():
	animation.play("Throw")
	fire.show()
	fireAnimation.play("Fire")


func _on_Timer_timeout():
	throw_fire()
	
	
