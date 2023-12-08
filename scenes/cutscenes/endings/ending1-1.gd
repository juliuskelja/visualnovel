extends Node2D

var end_music : AudioStream = load("res://assets/music/end_cutscene.mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	MusicPlayer.set_stream(end_music)
	MusicPlayer.play()
	$FadeRect/AnimationPlayer.play("fade_in")

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/cutscenes/endings/ending1-2.tscn")
