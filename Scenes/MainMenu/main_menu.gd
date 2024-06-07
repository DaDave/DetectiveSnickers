class_name MainMenu

extends Control

@export var levelOneScene: PackedScene

func _on_start_button_pressed():
	get_tree().change_scene_to_packed(levelOneScene)


func _on_credits_button_pressed():
	$CreditsLabel.visible = !$CreditsLabel.visible


func _on_quit_button_pressed():
	get_tree().quit()
