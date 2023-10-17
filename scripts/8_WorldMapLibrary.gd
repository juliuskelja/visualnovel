extends Sprite2D

func _on_library_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		get_tree().change_scene_to_file("res://scenes/library.tscn")
		print('Entered library')
