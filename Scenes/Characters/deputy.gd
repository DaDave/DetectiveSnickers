class_name Deputy extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent


func _ready():
	SpeechSignalBus.deputy_speak.connect(_on_deputy_speak)

func interact():
	SpeechSignalBus.queue_speech.emit(speech_component, "I know...")

func _on_deputy_speak(text: String):
	SpeechSignalBus.queue_speech.emit(speech_component, text)
