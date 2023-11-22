extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$TitleScreenMenuHighlight1.hide()
	$TitleScreenMenuHighlight2.hide()
	$TitleScreenMenuHighlight3.hide()

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

func _on_play_highlight_area_2d_input_event(viewport, event, shape_idx):
	pass


func _on_play_area_2d_input_event(viewport, event, shape_idx):
		print("FISAJIOSA")
