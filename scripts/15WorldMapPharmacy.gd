extends Sprite2D

func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/pharmacy.tscn")
		print('Entered pharmacy')
