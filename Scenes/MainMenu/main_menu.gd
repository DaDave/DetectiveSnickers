class_name MainMenu

extends Control

func _ready():
	SignalBus.main_menu_initiated.emit(self)
	$SmokingSnickersSprite.play("default")

func _on_start_button_pressed():
	SceneSwitcherSingleton.switch_scene_by_path("res://Scenes/TransitionScenes/transition_right_mission.tscn")

func _on_credits_button_pressed():
	$CreditsLabel.visible = !$CreditsLabel.visible

func _on_quit_button_pressed():
	get_tree().quit()
