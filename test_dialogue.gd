extends BaseDialogueTestScene

var myresource = load("res://dialogues/Beginning.dialogue")

func _ready() -> void:
	var balloon = load("res://custom_balloon/balloon.tscn").instantiate()
	add_child(balloon)
	balloon.start(myresource, title)






#This is a failed test to load dialogue through an export
#extends BaseDialogueTestScene
#@export var setdialogue : String
#
#var myresource = load("res://dialogues/" + setdialogue + ".dialogue")
#
#func _ready() -> void:
#	var balloon = load("res://custom_balloon/balloon.tscn").instantiate()
#	add_child(balloon)
#	balloon.start(myresource, title)



#extends BaseDialogueTestScene
#
#func _ready() -> void:
#	var balloon = load("res://custom_balloon/balloon.tscn").instantiate()
#	add_child(balloon)
#	balloon.start(resource, title)
#	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
#
#### Signals
#func _on_dialogue_ended(_resource: DialogueResource):
#	print("dialogue ended")
#	get_tree().change_scene_to_file("res://scenes/hahmonklikkaustesti1.tscn")


#extends BaseDialogueTestScene


#func _ready() -> void:
#	var balloon = load("res://custom_balloon/balloon.tscn").instantiate()
#	get_tree().current_scene.add_child.call_deferred(balloon)
#	balloon.start(resource, title)
