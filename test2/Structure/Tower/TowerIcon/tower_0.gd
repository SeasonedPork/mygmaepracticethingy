extends Panel

@onready var tower = preload("res://TowerIcon/tower_0.tscn")
var currTile
func _on_gui_input(event):
	var tempTower = tower.instantiate()
	if event is InputEventMouseButton and event.button_mask ==1:
		add_child(tempTower)
		tempTower.process_mode = Node.PROCESS_MODE_DISABLED
	elif event is InputEventMouseButton and event.button_mask == 1:
		get_child(1).global_position = event.global_position
	elif event is InputEventMouseButton and event.button_mask == 0:
		print("left button up")
		get_child(1).queue_free()
	
