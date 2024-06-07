class_name pause_menu

extends Control

@export var mainMenuScene: PackedScene

func _on_resume_button_pressed():
	pass # Replace with function body.

func _on_quit_button_pressed():
	get_tree().change_scene_to_packed(mainMenuScene)
