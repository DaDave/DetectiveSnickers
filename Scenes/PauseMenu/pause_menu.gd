class_name PauseMenu

extends Control

func _ready():
	SignalBus.pause_menu_initiated.emit(self)
	process_mode = Node.PROCESS_MODE_ALWAYS

func _on_resume_button_pressed():
	SignalBus.pause_requested.emit()

func _on_quit_button_pressed():
	SignalBus.pause_requested.emit()
	SceneSwitcherSingleton.switch_scene("res://Scenes/MainMenu/main_menu.tscn")
