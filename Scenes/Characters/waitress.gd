class_name Waitress extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent

@export_subgroup("Settings")
@export var speech_text: String = "I don't know what happened. I turned around and he was just sitting there."
@export var deputy_text: String = "Interesting..."

func interact():
	SpeechSignalBus.queue_speech.emit(speech_component, speech_text)
	SpeechSignalBus.deputy_speak.emit(deputy_text)
