extends Node

# Use this to switch scenes (remember to add the signal)
func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		get_tree().change_scene_to_file("res://scenes/SCENENAME.tscn")
		print('Clicked')
