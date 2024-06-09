class_name DeadGuySuit extends StaticBody2D

@export_subgroup("Settings")
@export var deputy_text = "This city has gone to shit"

func interact():
	$InteractAudioStreamPlayer2D.play()
	SpeechSignalBus.deputy_speak.emit(deputy_text)
