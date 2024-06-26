class_name TransitionRightMission extends Node2D

@export_subgroup("Nodes")
@export var police_car: PoliceCar
@export var horn_audio_player: AudioStreamPlayer2D

func _ready():
	if MainSingleton.transition_counter == 0:
		first_transition()

func first_transition():
	await get_tree().create_timer(2.0).timeout
	police_car.deputy_speak("Another day full of crime in this city...\nI'm really glad to have you with me, Detective Snickers.")
	police_car.deputy_speak("Would you mind turning on the horn?\nI feel like this might be urgent.")
	police_car.deputy_speak("Okay maybe I just like seeing you press\nSPACEBAR\nto interact with stuff")
	await SpeechSignalBus.speech_queue_finished
	await InputSingleton.interact_pressed
	police_car.snickers_speak("I AM DETECTIVE SNICKERS!")
	horn_audio_player.play()
	police_car.deputy_speak("Awesome! Now we just have to\narrive at the crime scene.")
	police_car.deputy_speak("I really can't wait to see you walk around using\nArrow Keys or WSAD")
	await SpeechSignalBus.speech_queue_finished
	await get_tree().create_timer(3.0).timeout
	SceneSwitcherSingleton.switch_to_next_scene()
