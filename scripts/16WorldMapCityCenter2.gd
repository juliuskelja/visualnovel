extends Sprite2D

var map_hover = load("res://assets/sound/valikkonavigointi.audio(VOLATOK).mp3")

func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/citycenter.tscn")
		print('Entered city center')

func _on_area_2d_mouse_entered():
	use_parent_material = false;
	SoundPlayer.set_stream(map_hover)
	SoundPlayer.play()

func _on_area_2d_mouse_exited():
	use_parent_material = true;
