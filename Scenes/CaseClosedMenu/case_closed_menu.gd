class_name CaseClosedMenu

extends Control

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS

func _on_continue_button_pressed():
	SceneSwitcherSingleton.switch_to_next_scene()

func _on_quit_button_pressed():
	SceneSwitcherSingleton.switch_scene_by_path("res://Scenes/MainMenu/main_menu.tscn")
