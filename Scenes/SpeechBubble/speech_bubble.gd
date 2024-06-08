extends Node2D

var bubble_text_length = 0
var bubble_text_index = 0
var current_text = ""

var bubble_text = "I AM DETECTIVE SNICKERS"
@onready var speech_label : Label= get_node("VerticalBoxContainer/SpeechLabel")
@onready var speech_nine_patch_rect : NinePatchRect = get_node("VerticalBoxContainer/SpeechLabel/SpeechNinePatchRect")
@onready var timer : Timer = get_node("Timer")

var should_close = false

func start_speech_bubble(bubble_text):
	bubble_text_length = bubble_text.length()
	timer.start(1)

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
			queue_free()
