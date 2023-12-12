extends Node
var mayor_music = load("res://assets/music/the_mayor(VOLATOK).mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	MusicPlayer.set_stream(mayor_music)
	MusicPlayer.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
