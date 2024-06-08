class_name Deputy extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent


func _ready():
	SpeechSignalBus.deputy_speak.connect(_on_deputy_speak)

func interact():
	speech_component.speak("I know...", 2.3)

func _on_deputy_speak(text: String, initial_delay: float):
	speech_component.speak(text, initial_delay)
