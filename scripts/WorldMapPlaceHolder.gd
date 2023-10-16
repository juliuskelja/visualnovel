extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_park_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		get_tree().change_scene_to_file("res://scenes/park.tscn")
		print('Entered park')


func _on_library_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		get_tree().change_scene_to_file("res://scenes/library.tscn")
		print('Entered library')


func _on_tent_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		get_tree().change_scene_to_file("res://scenes/tent.tscn")
		print('Entered tent')


func _on_pier_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		get_tree().change_scene_to_file("res://scenes/pier.tscn")
		print('Entered pier')
