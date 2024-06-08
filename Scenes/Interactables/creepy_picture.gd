class_name CreepyPicture extends StaticBody2D

@export_subgroup("Nodes")
@export var sprite: Sprite2D

func interact():
	SpeechSignalBus.deputy_speak.emit("Spooky", 2.5)
	sprite.rotate(deg_to_rad(60))
