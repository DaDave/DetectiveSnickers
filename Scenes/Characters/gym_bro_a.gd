class_name GymBroA extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent
@export var sprite: AnimatedSprite2D
@export var poison_bottle: PoisonBottle

@export_subgroup("Settings")
@export_multiline var speech_text = "Are you finished?\nCan I continue my workout?"
@export_multiline var confession_text = "That water bottle? What about it?"
@export_multiline var confession_text2 = "Last week he put salt into my protein shake\nI just pranked him back."
@export_multiline var confession_text3 = "I didn't know the bleach would kill him\nI read on the internet, that it could cure\nall kinds of stuff"
@export_multiline var deputy_confession_text = "No detail escapes the sharp eyes of Detective Snickers."

func _ready():
	sprite.play("idle_down")

func interact():
	if !poison_bottle or !poison_bottle.found:
		$InteractAudioStreamPlayer2D.play()
		SpeechSignalBus.queue_speech.emit(speech_component, speech_text)
	else:
		SpeechSignalBus.queue_speech.emit(speech_component, confession_text)
		SpeechSignalBus.queue_speech.emit(speech_component, confession_text2)
		SpeechSignalBus.queue_speech.emit(speech_component, confession_text3)
		SpeechSignalBus.deputy_speak.emit(deputy_confession_text)
		await SpeechSignalBus.speech_queue_finished
		SignalBus.case_closed.emit()
