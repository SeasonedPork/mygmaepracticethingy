extends Area2D

@export var health_component : HealthComponent

func Damage(attack : Attack):
	if health_component:
		print("Damage Registered")
		health_component.Damage(attack)
		print(attack)
