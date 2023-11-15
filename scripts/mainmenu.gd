extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$TitleScreenMenuHighlight1.hide()
	$TitleScreenMenuHighlight2.hide()
	$TitleScreenMenuHighlight2.hide()

func _on_play_area_2d_mouse_entered():
	$TitleScreenMenuHighlight1.show()

func _on_credits_area_2d_mouse_entered():
	$TitleScreenMenuHighlight2.show()

func _on_quit_area_2d_mouse_entered():
	$TitleScreenMenuHighlight3.show()

func _on_play_area_2d_mouse_exited():
	$TitleScreenMenuHighlight1.hide()

func _on_credits_area_2d_mouse_exited():
	$TitleScreenMenuHighlight2.hide()

func _on_quit_area_2d_mouse_exited():
	$TitleScreenMenuHighlight3.hide()


func _on_play_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and event.pressed):
		get_tree().change_scene_to_file("res://scenes/cutscenes/cutscene2/cutscene2-1-1.tscn")
		print("FISAJIOSA")
