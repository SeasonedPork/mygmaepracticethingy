extends CharacterBody2D

func _physics_process(delta):
	pass

func _shoot():
	const Bullet = preload("res://Bullet_type/bullet.tscn")
	var new_bullet = Bullet.instantiate()
	new_bullet.global_position = %shootingPoint.global_position
	new_bullet.global_rotation = %shootingPoint.global_rotation
	%shootingPoint.add_child(new_bullet)
