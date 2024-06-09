class_name GuestB extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent
@export var sprite: AnimatedSprite2D

@export_subgroup("Settings")
@export var speech_text = "Can't even enjoy a good meal\nin this town without the police showing up\nand shoving their cards in everyones faces"

func _ready():
	sprite.play("idle_down")

func interact():
	$InteractAudioStreamPlayer2D.play()
	SpeechSignalBus.queue_speech.emit(speech_component, speech_text)
