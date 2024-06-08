class_name Television extends Node2D

@export_subgroup("Nodes")
@export var animated_sprite: AnimatedSprite2D

@export_subgroup("Settings")
@export var deputy_answer_text = "You think that report's relevant to the case?"
@export var deputy_answer_delay = 3.0

var is_playing = false

func _ready():
	animated_sprite.hide()

func interact():
	print("Interacting with TV")
	if is_playing:
		animated_sprite.hide()
		is_playing = false
	else:
		animated_sprite.show()
		animated_sprite.play("playing")
		is_playing = true
		SpeechSignalBus.deputy_speak.emit(deputy_answer_text, deputy_answer_delay, 1.5)
