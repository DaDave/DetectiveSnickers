class_name PauseMenu

extends Control

@export var mainMenuScene: PackedScene

func _ready():
	SignalBus.pause_menu_initiated.emit(self)

func _on_resume_button_pressed():
	SignalBus.pause_requested.emit()

func _on_quit_button_pressed():
	get_tree().change_scene_to_packed(mainMenuScene)
