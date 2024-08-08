extends Node2D

var player 
func _ready():
	player = get_node("../Player")
	
func _physics_process(delta):
	pass

func _on_area_2d_area_entered(area):
	pass # Replace with function body.


func _on_area_2d_area_exited(area):
	pass # Replace with function body.
