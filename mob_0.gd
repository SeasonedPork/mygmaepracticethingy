extends CharacterBody2D


@export var SPEED = 1000


func _process(delta):
	get_parent().set_process(get_parent().get_progress() + SPEED*delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()

