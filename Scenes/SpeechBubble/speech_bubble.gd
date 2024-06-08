class_name SpeechBubble

extends Node2D

var bubble_text = ""
var bubble_text_length = 0
var bubble_text_index = 0
var current_text = ""
var should_close = false

@onready var speech_label : Label= get_node("VerticalBoxContainer/SpeechLabel")
@onready var timer : Timer = get_node("Timer")

func start_speech_bubble(input_text):
	bubble_text = input_text
	bubble_text_length = bubble_text.length()
	self.show()
	timer.start(0.5)
	
func initiateValues():
	bubble_text = ""
	bubble_text_length = 0
	bubble_text_index = 0
	current_text = ""
	speech_label.text = ""
	should_close = false

func _on_Timer_timeout():
	if(!should_close):
		current_text += bubble_text[bubble_text_index]
		speech_label.text = current_text
		
		if(bubble_text_index < bubble_text_length -1):
			timer.start(0.04)
			bubble_text_index += 1
		else:
			if(!should_close):
				should_close = true
				timer.start(1)
	else:
		if(bubble_text_length > 0):
			current_text.erase(bubble_text_length -1,1)
			speech_label.text = current_text
			bubble_text_length -= 1
			
			timer.start(0.04)
		else:
			SpeechSignalBus.speech_finished.emit()
			initiateValues()
			self.hide()
