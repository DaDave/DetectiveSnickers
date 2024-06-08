extends Node

signal deputy_speak(text: String, initial_delay: float)

signal queue_speech(speaker: Node2D, text: String)

signal speech_finished()
