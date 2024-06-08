class_name SpeechComponent extends Node

@export_subgroup("Nodes")
@export var speech_bubble: SpeechBubble

func speak(text: String, initial_delay: float):
	await get_tree().create_timer(initial_delay).timeout
	speech_bubble.start_speech_bubble(text)
