class_name Deputy extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent

@export_subgroup("Settings")
@export var deputy_text: String = "I know..."


func _ready():
	SpeechSignalBus.deputy_speak.connect(_on_deputy_speak)

func interact():
	SpeechSignalBus.queue_speech.emit(speech_component, deputy_text)

func _on_deputy_speak(text: String):
	SpeechSignalBus.queue_speech.emit(speech_component, text)
