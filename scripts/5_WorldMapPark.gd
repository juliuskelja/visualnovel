extends Sprite2D

@onready var warning = $"../Warning"

var warningOpen = false
var map_hover = load("res://assets/sound/valikkonavigointi.audio(VOLATOK).mp3")

func openingWarn():
	if (warning.z_index == -2):
		warningOpen = false
		print("is false")
	if (warning.z_index == 1):
		warningOpen = true
		print("is open")

func _ready():
	warning.z_index = -2

func _on_park_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		warning.z_index = 1
		openingWarn()

func _on_park_mouse_entered():
	use_parent_material = false;
	set_z_index(1)
	SoundPlayer.set_stream(map_hover)
	SoundPlayer.play()
func _on_park_mouse_exited():
	use_parent_material = true;
	set_z_index(0)

func _on_warning_no_button_pressed():
	warning.z_index = -2
	openingWarn()

func _on_warning_yes_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Implemented_scenes/park1.tscn")
