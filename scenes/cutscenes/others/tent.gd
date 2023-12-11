extends Node2D

var tent_music = load("res://assets/music/tentambience(VOLATOK).mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	MusicPlayer.set_stream(tent_music)
	MusicPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/cutscenes/others/tent2.tscn")
