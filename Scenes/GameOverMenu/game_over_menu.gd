class_name GameOverMenu

extends Control

func _ready():
	SignalBus.game_over_menu_initiated.emit(self)
	process_mode = Node.PROCESS_MODE_ALWAYS

func _on_quit_button_pressed():
	SceneSwitcherSingleton.switch_scene_by_path("res://Scenes/MainMenu/main_menu.tscn")
