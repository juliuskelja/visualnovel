extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_tent_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/cutscenes/others/tent.tscn")


func _on_tent_mouse_entered():
	use_parent_material = false;
	set_z_index(1)

func _on_tent_mouse_exited():
	use_parent_material = true;
	set_z_index(0)
