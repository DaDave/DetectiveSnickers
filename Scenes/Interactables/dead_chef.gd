extends StaticBody2D

@export_subgroup("Settings")
@export var deputy_text = "Well observed, Detective Snickers!\nThere seems to be blood around his neck."

func interact():
	$InteractAudioStreamPlayer2D.play()
	SpeechSignalBus.deputy_speak.emit(deputy_text)
