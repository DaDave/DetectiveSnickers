class_name PunchingBag extends StaticBody2D

@export_subgroup("Nodes")
@export var sprite: AnimatedSprite2D

var loops = 0

func _ready():
	sprite.animation_looped.connect(_on_animation_looped)

func interact():
	$BagAudioStreamPlayer2D.play()
	sprite.play("swing")

func _on_animation_looped():
	if sprite.animation.contains("swing"):
		loops = loops + 1
		if loops > 2:
			SpeechSignalBus.deputy_speak.emit("I think your card-showing arm is strong enough")
			sprite.play("idle")
