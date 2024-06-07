class_name main_menu

extends Control

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")


func _on_credits_button_pressed():
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
