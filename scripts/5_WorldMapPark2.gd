extends Sprite2D

func _ready():
	pass

func _on_park_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/Implemented_scenes/park1.tscn")

func _on_park_mouse_entered():
	use_parent_material = false;
	set_z_index(1)
func _on_park_mouse_exited():
	use_parent_material = true;
	set_z_index(0)
