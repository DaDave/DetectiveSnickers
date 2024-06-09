class_name WeightBench extends StaticBody2D

@export_subgroup("Nodes")
@export var sprite: Sprite2D

@export_subgroup("Settings")
@export_multiline var deputy_text: String = "O.O"

var flipped = false

func interact():
	if !flipped:
		rotate(deg_to_rad(90))
		flipped = true
		SpeechSignalBus.deputy_speak.emit(deputy_text)
