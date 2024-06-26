extends Node

var pause_menu_instance : PauseMenu = null
var case_closed: CaseClosedMenu
var game_over: GameOverMenu
var isPaused : bool = false
var transition_counter = 0

func _ready():
	SignalBus.pause_menu_initiated.connect(_onPauseMenuInitiated)
	SignalBus.pause_requested.connect(_onPauseRequested)
	SignalBus.case_closed.connect(_onCaseClosed)
	SignalBus.case_closed_menu_initiated.connect(_onCaseClosedMenuInitiated)
	SignalBus.game_over.connect(_onGameOver)
	SignalBus.game_over_menu_initiated.connect(_onGameOverMenuInitiated)

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pause()
		
func _onPauseRequested():
	pause()
	
func _onPauseMenuInitiated(pause_menu: PauseMenu):
	pause_menu_instance = pause_menu
	
func _onCaseClosed():
	case_closed.show()

func _onCaseClosedMenuInitiated(_case_closed: CaseClosedMenu):
	case_closed = _case_closed
	
func _onGameOver():
	game_over.show()

func _onGameOverMenuInitiated(_game_over: GameOverMenu):
	game_over = _game_over

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
