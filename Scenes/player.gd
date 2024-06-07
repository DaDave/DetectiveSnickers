class_name Player extends CharacterBody2D

@export_subgroup("Nodes")
@export var input_component: InputComponent
@export var movement_component: MovementComponent
@export var animation_component: AnimationComponent

func _physics_process(delta):
	movement_component.handle_movement(self, input_component.input_horizontal, input_component.input_vertical)
	animation_component.handle_move_animation(input_component.input_horizontal, input_component.input_vertical)
	
	move_and_slide()
	for i in get_slide_collision_count():
		var collider = get_slide_collision(i).get_collider()
		print("I collided with ", collider.name)
		if collider.has_method("interact") && input_component.wants_to_interact():
			collider.interact()
		



