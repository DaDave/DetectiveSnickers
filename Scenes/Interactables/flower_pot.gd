class_name FlowerPot extends StaticBody2D

@export_subgroup("Nodes")
@export var path_follow: PathFollow2D
@export var collision_shelf: CollisionShape2D
@export var collision_ground: CollisionShape2D

@export_subgroup("Settings")
@export var fall_height: float = 10.0
@export var progress_step: float = 3.0

var _should_fall = false

func _ready():
	collision_ground.disabled = true

func _process(delta):
	if _should_fall:
		path_follow.progress = path_follow.progress + progress_step

func interact():
	if !_should_fall:
		fall()

func fall():
	get_parent().remove_child(self)
	path_follow.add_child(self)
	collision_shelf.disabled = true
	collision_ground.disabled = false
	reset_position()
	_should_fall = true

func reset_position():
	self.position = Vector2.ZERO
