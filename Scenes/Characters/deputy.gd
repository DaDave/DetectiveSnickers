class_name Deputy extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent

func interact():
	speech_component.speak("I know...", 2.3)
