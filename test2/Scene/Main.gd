extends Node2D

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scene/Scene1.tscn")


func _on_setting_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()


func _on_test_pressed():
	get_tree().change_scene_to_file("res://Scene/Scene2.tscn")
