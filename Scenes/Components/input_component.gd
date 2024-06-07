class_name InputComponent extends Node

var input_horizontal: float = 0.0
var input_vertical: float = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	input_horizontal = Input.get_axis("player_left", "player_right")
	input_vertical = Input.get_axis("player_up", "player_down")
