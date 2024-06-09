class_name GuestC extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent
@export var sprite: AnimatedSprite2D

@export_subgroup("Settings")
@export var speech_text = "I'm just in town for work.\nStop bothering me."

func _ready():
	sprite.play("idle_down")

func interact():
	$InteractAudioStreamPlayer2D.play()
	SpeechSignalBus.queue_speech.emit(speech_component, speech_text)
