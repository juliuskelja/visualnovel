extends Node2D


var dialogue
@export var clickable_sprite : Sprite2D
@export var setdialogue : String #added this for dialogue load func line 9

var dialogue2
@export var clickable_sprite2 : Sprite2D
@export var setdialogue2 : String

func _ready():
	dialogue = load("res://scenes/0dialoguepointer_scenes/" + setdialogue + ".tscn")
	#dialogue = load("res://scenes/test_dialogue.tscn")
	clickable_sprite = $Anna
	
	dialogue2 = load("res://scenes/0dialoguepointer_scenes/" + setdialogue + ".tscn")
	#dialogue = load("res://scenes/test_dialogue.tscn")
	clickable_sprite2 = $Anna
	
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		add_child(dialogue.instantiate())
		clickable_sprite.visible = true

### Signals
func _on_dialogue_ended(_resource: DialogueResource):
	print("dialogue ended")
	clickable_sprite.visible = true #[HEHEE.TÄSSÄ.VIKA]



#extends Sprite2D
#
#func _on_area_2d_input_event(viewport, event, shape_idx):
#	if (event is InputEventMouseButton and event.pressed):
#		get_tree().change_scene_to_file("res://scenes/test_dialogue.tscn")
#
#
#
#

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

