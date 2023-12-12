extends Sprite2D

var menu_click = load("res://assets/sound/valikkovalitse.audio(VOLATOK).mp3")
var menu_hover = load("res://assets/sound/valikkonavigointi.audio(VOLATOK).mp3")


# Called when the node enters the scene tree for the first time.
func _ready():
	$"../ButtonBackHighlighted".hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_mouse_entered():
	$"../ButtonBackHighlighted".show()
	SoundPlayer.set_stream(menu_hover)
	SoundPlayer.play()

func _on_area_2d_mouse_exited():
	$"../ButtonBackHighlighted".hide()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/cutscenes/mainmenu.tscn")
	SoundPlayer.set_stream(menu_click)
	SoundPlayer.play()
