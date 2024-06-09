class_name TransitionRightMission extends Node2D

@export_subgroup("Nodes")
@export var police_car: PoliceCar

func first_transition():
	police_car.deputy_speak("Hi")
