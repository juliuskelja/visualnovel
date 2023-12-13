extends Sprite2D

var map_click = load("res://assets/sound/karttavalitse.audio(VOLATOK).mp3")

func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/cutscenes/endings/secretending.tscn")
		SoundPlayer.set_stream(map_click)
		SoundPlayer.play()
