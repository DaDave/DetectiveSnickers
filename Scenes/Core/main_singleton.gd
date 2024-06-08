extends Node

var pause_menu_instance : PauseMenu = null;
var isPaused : bool = false

func _ready():
	SignalBus.pause_menu_initiated.connect(_onPauseMenuInitiated)
	SignalBus.pause_requested.connect(_onPauseRequested)

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pause()
		
func _onPauseRequested():
	pause()
	
func _onPauseMenuInitiated(pause_menu: PauseMenu):
	pause_menu_instance = pause_menu
	
func pause():
	if isPaused:
		pause_menu_instance.hide()
		Engine.time_scale = 1
		get_tree().paused = false
	else:
		pause_menu_instance.show()
		Engine.time_scale = 0
		get_tree().paused = true
	
	isPaused = !isPaused
