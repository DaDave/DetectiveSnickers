class_name OfficeDesk extends StaticBody2D

@export_subgroup("Settings")
@export_multiline var deputy_text: String = "You're right, Detective Snickers.\nA detective of your skills shouldn't be\nbothered with lowly paperwork"
@export_multiline var deputy_text2: String = "Go home,\nI'll take care of the reports"

func interact():
	$DeskAudioStreamPlayer2D.play()
	rotate(deg_to_rad(90))
	SpeechSignalBus.deputy_speak.emit(deputy_text)
	SpeechSignalBus.deputy_speak.emit(deputy_text2)
	await SpeechSignalBus.speech_queue_finished
	SignalBus.game_over.emit()
