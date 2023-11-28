extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$"../ButtonBackHighlighted".hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_mouse_entered():
	$"../ButtonBackHighlighted".show()
	$"../MenuHover".play()

func _on_area_2d_mouse_exited():
	$"../ButtonBackHighlighted".hide()

func _on_button_pressed():
	$Button/Timer.start()
	$"../MenuClick".play()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/cutscenes/mainmenu.tscn")
