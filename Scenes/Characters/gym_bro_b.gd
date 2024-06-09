class_name GymBroB extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent
@export var sprite: AnimatedSprite2D

@export_subgroup("Settings")
@export_multiline var speech_text = "Damn bro, your right arm looks like\nyou could pick up a whole shelf of weights!"
@export_multiline var deputy_text = "Of course! That arm is\nthe only thing standing between this city\nand the forces of chaos!"

func _ready():
	sprite.play("idle_down")

func interact():
	$InteractAudioStreamPlayer2D.play()
	SpeechSignalBus.queue_speech.emit(speech_component, speech_text)
	SpeechSignalBus.deputy_speak.emit(deputy_text)
