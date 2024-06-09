class_name PoliceCar extends CharacterBody2D

@export_subgroup("Nodes")
@export var movement_component: MovementComponent
@export var animation_component: AnimationComponent
@export var snickers_speech: SpeechComponent
@export var raider_speech: SpeechComponent

@export_subgroup("Settings")
@export var movement_speed: float

func _physics_process(delta):
	movement_component.handle_movement(self, movement_speed, 0.0)
	animation_component.handle_move_animation(movement_speed, 0.0)
	move_and_slide()

func snickers_speak(text: String):
	SpeechSignalBus.queue_speech.emit(snickers_speech, text)
	
func deputy_speak(text: String):
	SpeechSignalBus.queue_speech.emit(raider_speech, text)
