extends BaseDialogueTestScene

func _ready() -> void:
	var balloon = load("res://custom_balloon/balloon.tscn").instantiate()
	add_child(balloon)
	balloon.start(resource, title)
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

### Signals
func _on_dialogue_ended(_resource: DialogueResource):
	print("dialogue ended")
	get_tree().change_scene_to_file("res://scenes/hahmonklikkaustesti1.tscn")


#extends BaseDialogueTestScene


#func _ready() -> void:
#	var balloon = load("res://custom_balloon/balloon.tscn").instantiate()
#	get_tree().current_scene.add_child.call_deferred(balloon)
#	balloon.start(resource, title)
