extends Area2D

var detect_foe : bool = false
func _physics_process(delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		detect_foe = true
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)
	else:
		detect_foe = false
		
func _shoot():
	const Bullet = preload("res://Bullet_type/bullet.tscn")
	var new_bullet = Bullet.instantiate()
	new_bullet.global_position = %shootingPoint.global_position
	new_bullet.global_rotation = %shootingPoint.global_rotation
	%shootingPoint.add_child(new_bullet)


func _on_timer_timeout():
	if detect_foe == true:
		_shoot()
		
