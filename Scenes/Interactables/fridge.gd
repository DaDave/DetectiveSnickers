class_name Fridge extends StaticBody2D

@export_subgroup("Nodes")
@export var sprite: AnimatedSprite2D

@export_subgroup("Settings")
@export var deputy_text = "Is that a bloody knife in the fridge?"
@export var deputy_text2 = "That's really impressive, Detective Snickers!\nWho would've thought we'd find the murder\nweapon in there?"
@export var deputy_text3 = "But who put it there?"

var is_open = false
var read = false

func interact():
	if is_open:
		sprite.play("close")
		is_open = false
	else:
		sprite.play("open")
		is_open = true
	await sprite.animation_finished
	if is_open && !read:
		SpeechSignalBus.deputy_speak.emit(deputy_text)
		SpeechSignalBus.deputy_speak.emit(deputy_text2)
		SpeechSignalBus.deputy_speak.emit(deputy_text3)
		read = true
