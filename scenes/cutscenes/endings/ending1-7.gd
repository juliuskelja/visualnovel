extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$FadeRect.hide()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/cutscenes/endings/ending1-8.tscn")
