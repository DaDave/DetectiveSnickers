extends Node

signal interact_pressed()

func _process(delta):
	if Input.is_action_just_pressed("player_interact"):
		print("Interact pressed")
		interact_pressed.emit()
