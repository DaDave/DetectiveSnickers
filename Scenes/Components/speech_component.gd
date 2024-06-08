class_name SpeechComponent extends Node

@export_subgroup("Nodes")
@export var speech_label: Label

@export_subgroup("Settings")
@export var text_speed: float = 0.05
@export var text_timeout: float = 1.0

var is_speaking = false

func speak(text: String, initial_delay: float):
	await get_tree().create_timer(initial_delay).timeout
	if !is_speaking:
		is_speaking = true
		for c in text:
			speech_label.text = speech_label.text + c
			await get_tree().create_timer(text_speed).timeout
		await get_tree().create_timer(text_timeout).timeout
		speech_label.text = ""
		is_speaking = false
