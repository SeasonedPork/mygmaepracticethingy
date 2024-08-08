extends Timer

func _spawnsomenicething():
	const spawntarget = preload("res://Bullet_type/bullet1.tscn")
	var new_spawn = spawntarget.instantiate()
	pass

func _on_timer_timeout():
	pass # Replace with function body.

#func _shoot():
	#const Bullet = preload("res://Bullet_type/bullet1.tscn")
	#var new_bullet = Bullet.instantiate()
	#new_bullet.global_position = %shootingPoint.global_position
	#new_bullet.global_rotation = %shootingPoint.global_rotation
	#%shootingPoint.add_child(new_bullet)

#func _physics_process(delta):
	#var enemies_in_range = get_overlapping_bodies()
	#if enemies_in_range.size() > 0:
		#var target_enemy = enemies_in_range.front()
		#look_at(target_enemy.global_position)
	#


#func _on_timer_timeout():
		#print("Shoot")
		#_shoot()
