extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
		$FadeRect.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/cutscenes/cutscene1/cutscene1-4.tscn")

func _on_rich_text_label_gui_input(event):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/cutscenes/cutscene1/cutscene1-4.tscn")
