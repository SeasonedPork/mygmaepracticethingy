extends Node2D 


#func _spawn_mob():
	#var newmob = preload("").instantiate()
#	%PathFollow2D.progress_ratio = randf()
#	newmob.global_position = %PathFollow2D.global_position
#	add_child(newmob)

var counter = 0
func _on_timer_timeout_spawn():
	
	if(counter < 5 ):
		counter += 1
#		_spawn_mob()

