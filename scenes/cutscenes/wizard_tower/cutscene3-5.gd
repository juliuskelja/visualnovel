extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _on_button_pressed():
	MusicPlayer.stop()
	get_tree().change_scene_to_file("res://scenes/map1.tscn")
