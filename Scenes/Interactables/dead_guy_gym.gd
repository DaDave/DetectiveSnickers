class_name DeadGuyGym extends StaticBody2D

@export_subgroup("Settings")
@export_multiline var deputy_text = "That's right, it looks like his last meal didn't agree with him"

func interact():
	$InteractAudioStreamPlayer2D.play()
	SpeechSignalBus.deputy_speak.emit(deputy_text)
