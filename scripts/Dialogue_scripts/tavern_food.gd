extends Node2D


var dialogue
@export var clickable_sprite : Sprite2D

func _ready():
	dialogue = load("res://scenes/test_dialogue.tscn")
	clickable_sprite = $Anne
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		add_child(dialogue.instantiate())
		clickable_sprite.visible = false

### Signals
func _on_dialogue_ended(_resource: DialogueResource):
	print("dialogue ended")
	clickable_sprite.visible = true
