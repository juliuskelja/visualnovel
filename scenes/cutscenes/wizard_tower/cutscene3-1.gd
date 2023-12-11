extends Node2D

var wizard_music = load("res://assets/music/wizard_tower(VOLATOK).mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	MusicPlayer.set_stream(wizard_music)
	MusicPlayer.play()
func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/cutscenes/wizard_tower/cutscene3-2.tscn")
