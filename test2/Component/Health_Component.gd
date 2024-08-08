extends Node2D
class_name HealthComponent
@export var MAX_Health := 10
var Health : float
func _ready():
	Health = MAX_Health
	
func Damage(attack: Attack):
	print("Hit")
	Health -= attack.attack_damage
	if Health <= 0:
		get_parent().queue_free()
