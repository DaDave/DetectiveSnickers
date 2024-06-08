extends StaticBody2D

@export_subgroup("Settings")
@export var deputy_text = "Well observed, Detective Snickers! There seems to be blood around his neck."

func interact():
	SpeechSignalBus.deputy_speak.emit(deputy_text)
