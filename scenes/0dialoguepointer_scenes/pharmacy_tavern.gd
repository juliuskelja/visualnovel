extends BaseDialogueTestScene

var myresource = load("res://dialogues/pharmacy_tavern.dialogue")

func _ready() -> void:
	var balloon = load("res://custom_balloon/balloon.tscn").instantiate()
	add_child(balloon)
	balloon.start(myresource, title)
