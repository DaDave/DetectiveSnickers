extends Node

var queue: Array

var _is_speaking = false

func _ready():
	SpeechSignalBus.queue_speech.connect(_on_queue_speech)
	SpeechSignalBus.speech_finished.connect(_on_speech_finished)

func _on_queue_speech(speech_component: SpeechComponent, text: String):
	queue.push_back({"component": speech_component, "text": text})
	if !_is_speaking:
		next_speech()

func _on_speech_finished():
	next_speech()

func next_speech():
	var next_speech = queue.pop_front()
	if next_speech:
		_is_speaking = true
		next_speech["component"].speak(next_speech["text"], 0.0)
	else:
		_is_speaking = false
		SpeechSignalBus.speech_queue_finished.emit()
