class_name Waitress extends CharacterBody2D

@export_subgroup("Nodes")
@export var speech_component: SpeechComponent
@export var sprite: AnimatedSprite2D
@export var fridge: Fridge

@export_subgroup("Settings")
@export_multiline var speech_text = "I don't know what happened.\nI turned around and he was just sitting there."
@export var deputy_text = "Interesting..."
@export var speech_confession_text = "Ok, ok, I'll confess.\nYour impressive performance made it clear\nthat I won't be able to hide what I did."
@export var speech_confession_text2 = "I loved him, but he didn't love me back.\nWhen I saw him smile while talking to that bitch\nI just snapped."
@export var speech_confession_text3 = "If I can't have him, nobody will."
@export var deputy_confession_text = "I really don't know how you do it, Detective Snickers.\nYou must be the most competent Detective\nin the history of solving murders."

func _ready():
	sprite.play("idle_down")

func interact():
	if !fridge or !fridge.read:
		$InteractAudioStreamPlayer2D.play()
		SpeechSignalBus.queue_speech.emit(speech_component, speech_text)
		if !deputy_text.is_empty():
			SpeechSignalBus.deputy_speak.emit(deputy_text)
	elif fridge.read:
		SpeechSignalBus.queue_speech.emit(speech_component, speech_confession_text)
		SpeechSignalBus.queue_speech.emit(speech_component, speech_confession_text2)
		SpeechSignalBus.queue_speech.emit(speech_component, speech_confession_text3)
		SpeechSignalBus.deputy_speak.emit(deputy_confession_text)
		await SpeechSignalBus.speech_queue_finished
		SignalBus.case_closed.emit()
