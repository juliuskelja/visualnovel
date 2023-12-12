extends Node2D

var map_open = load("res://assets/sound/karttaauki.audio(VOLATOK).mp3")
var map_hover = load("res://assets/sound/valikkonavigointi.audio(VOLATOK).mp3")
var map_click = load("res://assets/sound/karttavalitse.audio(VOLATOK).mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	SoundPlayer.set_stream(map_open)
	SoundPlayer.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
