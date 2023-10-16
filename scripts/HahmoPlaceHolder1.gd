extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$"../DialogNode".hide()

func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		$"../DialogNode".show()
		print("Nayta dialogi")
		DialogueManager.show_example_dialogue_balloon(load("res://dialogue/main.dialogue"), "start")
