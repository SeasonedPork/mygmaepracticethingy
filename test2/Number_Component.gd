extends Node
class_name numberComponent

# Called when the node enters the scene tree for the first time.
var number_current_mob : int = 0

func add_number_current_mob():
	number_current_mob += 1
	
func del_number_current_mob():
	number_current_mob -= 1

func count_current_number_mob():
	return number_current_mob

