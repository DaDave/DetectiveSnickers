class_name GuestA extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent
@export var sprite: AnimatedSprite2D

@export_subgroup("Settings")
@export var speech_text = "Is that a library card?"

func _ready():
	sprite.play("idle_down")

func interact():
	SpeechSignalBus.queue_speech.emit(speech_component, speech_text)
