class_name AnimationComponent extends Node

@export_subgroup("Nodes")
@export var sprite: AnimatedSprite2D

var up: bool = false 
var down: bool = true 
var left: bool = false 
var right: bool = false 

func handle_move_animation(direction_horizontal: float, direction_vertical: float) -> void:
	if up:
		if direction_vertical != 0: sprite.play("run_up")
		else: sprite.play("idle_up")
	if down:
		if direction_vertical != 0: sprite.play("run_down")
		else: sprite.play("idle_down")
	if left:
		if direction_horizontal != 0: sprite.play("run_left")
		else: sprite.play("idle_left")
	if right:
		if direction_horizontal != 0: sprite.play("run_right")
		else: sprite.play("idle_right")
	
	up = direction_vertical < 0
	down = direction_vertical > 0
	left = direction_horizontal < 0
	right = direction_horizontal > 0

