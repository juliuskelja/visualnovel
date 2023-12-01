extends BaseDialogueTestScene

var myresource = load("res://dialogues/shop_food.dialogue")

func _ready() -> void:
	var balloon = load("res://custom_balloon/balloon.tscn").instantiate()
	add_child(balloon)
	balloon.start(myresource, title)
