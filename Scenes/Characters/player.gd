class_name Player extends CharacterBody2D

@export_subgroup("Nodes")
@export var input_component: InputComponent
@export var movement_component: MovementComponent
@export var animation_component: AnimationComponent
@export var speech_component: SpeechComponent

var _is_presenting_card = false

func _ready():
	SpeechSignalBus.speech_queue_finished.connect(_on_speech_queue_finished)

func _physics_process(delta):
	if !_is_presenting_card:
		movement_component.handle_movement(self, input_component.input_horizontal, input_component.input_vertical)
		animation_component.handle_move_animation(input_component.input_horizontal, input_component.input_vertical)
	
	move_and_slide()
	for i in get_slide_collision_count():
		var collider = get_slide_collision(i).get_collider()
		if collider.has_method("interact") && input_component.wants_to_interact():
			if !_is_presenting_card:
				_handle_interaction(collider)
		

func _handle_interaction(interactable):
	_is_presenting_card = true
	animation_component.show_card()
	SpeechSignalBus.queue_speech.emit(speech_component, "I AM DETECTIVE SNICKERS!")
	interactable.interact()

func _on_speech_queue_finished():
	animation_component.stop_showing_card()
	_is_presenting_card = false
