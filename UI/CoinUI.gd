extends Control

onready var label = $Label

var max_coins = 3
var coins = 0 setget coins_changed

func coins_changed(value):
	coins += value
	
func _ready():
	label.set_text("Coins: " + str(coins) + "/" + str(max_coins))

func _physics_process(delta):
	label.set_text("Coins: " + str(coins) + "/" + str(max_coins))
	

