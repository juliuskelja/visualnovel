extends Node2D

# Called when the node enters the scene tree for the first time.
var menu_click = load("res://assets/sound/valikkovalitse.audio(VOLATOK).mp3")
var menu_hover = load("res://assets/sound/valikkonavigointi.audio(VOLATOK).mp3")

func _ready():
	$ColorRect2/AnimationPlayer.play("creditfade")
	$TitleScreenMenuHighlight1.hide()
	$TitleScreenMenuHighlight2.hide()
	$TitleScreenMenuHighlight3.hide()

func _on_play_area_2d_mouse_entered():
	$TitleScreenMenuHighlight1.show()
	SoundPlayer.set_stream(menu_hover)
	SoundPlayer.play()
	
func _on_credits_area_2d_mouse_entered():
	$TitleScreenMenuHighlight2.show()
	SoundPlayer.set_stream(menu_hover)
	SoundPlayer.play()

func _on_quit_area_2d_mouse_entered():
	$TitleScreenMenuHighlight3.show()
	SoundPlayer.set_stream(menu_hover)
	SoundPlayer.play()

func _on_play_area_2d_mouse_exited():
	$TitleScreenMenuHighlight1.hide()

func _on_credits_area_2d_mouse_exited():
	$TitleScreenMenuHighlight2.hide()

func _on_quit_area_2d_mouse_exited():
	$TitleScreenMenuHighlight3.hide()
	
	
	########
func _on_play_button_pressed():
	SoundPlayer.set_stream(menu_click)
	SoundPlayer.play()
	get_tree().change_scene_to_file("res://scenes/cutscenes/cutscene1/cutscene1-1.tscn")

func _on_credits_button_pressed():
	SoundPlayer.set_stream(menu_click)
	SoundPlayer.play()
	get_tree().change_scene_to_file("res://scenes/cutscenes/credits-scene2/credits.tscn")

func _on_quit_button_pressed():
	SoundPlayer.set_stream(menu_click)
	SoundPlayer.play()
	get_tree().quit()
