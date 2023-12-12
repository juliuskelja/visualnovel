extends Sprite2D

var map_hover = load("res://assets/sound/valikkonavigointi.audio(VOLATOK).mp3")
var map_click = load("res://assets/sound/karttavalitse.audio(VOLATOK).mp3")

func _ready():
	pass

func _on_park_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/Implemented_scenes/park1.tscn")
		SoundPlayer.set_stream(map_click)
		SoundPlayer.play()

func _on_park_mouse_entered():
	use_parent_material = false;
	set_z_index(1)
	SoundPlayer.set_stream(map_hover)
	SoundPlayer.play()

func _on_park_mouse_exited():
	use_parent_material = true;
	set_z_index(0)
