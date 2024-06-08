extends Node

var current_scene = null
var scene_path_array = [
	"res://Scenes/MainMenu/main_menu.tscn",
	"res://Scenes/level_1.tscn",
	"res://Scenes/level_2.tscn",
	"res://Scenes/level_3.tscn"
]
func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)

func switch_to_next_scene():
	var current_scene_index = scene_path_array.find(current_scene.scene_file_path)
	switch_scene_by_path(scene_path_array[current_scene_index + 1])

func switch_scene_by_path(scene_path):
	call_deferred("_deferred_switch_scene", scene_path)
	
func _deferred_switch_scene(scene_path):
	current_scene.free()
	var scene = load(scene_path)
	current_scene = scene.instantiate()
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene
