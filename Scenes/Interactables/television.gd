class_name Television extends Node2D

@export_subgroup("Nodes")
@export var animated_sprite: AnimatedSprite2D

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
