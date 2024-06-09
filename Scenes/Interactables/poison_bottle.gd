class_name PoisonBottle extends StaticBody2D

@export_subgroup("Settings")
@export_multiline var deputy_text = "You're right! That water bottle seems to\nbelong to the victim!"
@export_multiline var deputy_text2 = "But what is that green stuff\naround the opening?"

var found = false

func interact():
	$BottleAudioStreamPlayer2D.play()
	SpeechSignalBus.deputy_speak.emit(deputy_text)
	SpeechSignalBus.deputy_speak.emit(deputy_text2)
	found = true
