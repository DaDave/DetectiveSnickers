class_name FlowerPot extends StaticBody2D

@export_subgroup("Nodes")
@export var path_follow: PathFollow2D
@export var collision_shelf: CollisionShape2D
@export var collision_ground: CollisionShape2D

@export_subgroup("Settings")
@export var fall_height: float = 10.0
@export var progress_step: float = 3.0
@export var deputy_text = "You are brilliant, Detective Snickers!\nThat's how it happened!"
@export var deputy_text2 = "The victim must have bumped into the shelf\n and the vase fell on his head!"
@export var deputy_text3 = "With your brilliant skills of deduction\n you almost make our job look effortless"

var _should_fall = false
var _on_ground = false

func _ready():
	collision_ground.disabled = true

func _process(delta):
	if _should_fall:
		path_follow.progress = path_follow.progress + progress_step
	if path_follow.progress_ratio == 1 && !_on_ground:
		handle_on_ground()

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

func handle_on_ground():
	$GlassBrokeAudioStreamPlayer2D.play()
	_on_ground = true

	SpeechSignalBus.deputy_speak.emit(deputy_text)
	#await get_tree().create_timer(text1_time+0.2).timeout
	SpeechSignalBus.deputy_speak.emit(deputy_text2)
	#await get_tree().create_timer(text2_time+0.2).timeout
	SpeechSignalBus.deputy_speak.emit(deputy_text3)
	await SpeechSignalBus.speech_queue_finished
	SignalBus.case_closed.emit()


func reset_position():
	self.position = Vector2.ZERO
