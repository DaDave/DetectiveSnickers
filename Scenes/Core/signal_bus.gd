extends Node

signal pause_requested()

signal pause_menu_initiated(pause_menu : PauseMenu)

signal quit_level_requested()

signal main_menu_initiated(main_menu : MainMenu)

signal case_closed()

signal case_closed_menu_initiated(case_closed: CaseClosedMenu)

signal game_over()

signal game_over_menu_initiated(game_over_closed: GameOverMenu)

signal transition_finished()
