extends Sprite2D

func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		get_tree().change_scene_to_file("res://scenes/test_dialogue.tscn")





#extends Sprite2D
#
#
#const Balloon = preload("res://scenes/test_dialogue.tscn")
#
#
#@export var dialogue_resource: DialogueResource
#@export var dialogue_start: String = "start"
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#
#
#func _on_area_2d_input_event(viewport, event, shape_idx):
#	var balloon: Node = Balloon.instantiate()
#	get_tree().current_scene.add_child(balloon)
#	balloon.start(dialogue_resource, dialogue_start)

