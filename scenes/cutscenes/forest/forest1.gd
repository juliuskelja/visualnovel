extends Node2D

var forest_music : AudioStream = load("res://assets/music/spooky_forest(VOLATOK).mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	MusicPlayer.set_stream(forest_music)
	MusicPlayer.play()
	
func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/cutscenes/forest/forest2.tscn")
