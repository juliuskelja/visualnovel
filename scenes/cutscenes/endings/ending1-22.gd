extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$FadeRect/AnimationPlayer.play("fade_in")

func _on_button_pressed():
	MusicPlayer.stop()
	$FadeRect2/AnimationPlayer2.play("fade_out")
	$Timer.start()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://credits-scene/credits.tscn")
