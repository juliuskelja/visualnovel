extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/cutscenes/cutscene3/cutscene3-5.tscn")
