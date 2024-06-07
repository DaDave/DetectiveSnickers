class_name Player extends CharacterBody2D

@export_subgroup("Nodes")
@export var input_component: InputComponent
@export var movement_component: MovementComponent
@export var animation_component: AnimationComponent

func _physics_process(delta):
	movement_component.handle_movement(self, input_component.input_horizontal, input_component.input_vertical)
	animation_component.handle_move_animation(input_component.input_horizontal, input_component.input_vertical)



