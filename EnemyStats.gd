extends Node

export(int) var max_health = 1 setget set_max_enemy_health
var health = max_health setget set_enemy_health

signal no_health
signal health_enemy_changed(value)
signal max_health_enemy_changed(value)

func set_max_enemy_health(value):
	max_health = value
	self.health = min(health, max_health)
	emit_signal("max_health_enemy_changed", max_health)

func set_enemy_health(value):
	health = value
	emit_signal("health_enemy_changed", health)
	if health <= 0:
		emit_signal("no_health")

func _ready():
	self.health = max_health
