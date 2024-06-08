extends Node

func calculate_speak_time(text: String, text_speed: float):
	return text.length() * text_speed
