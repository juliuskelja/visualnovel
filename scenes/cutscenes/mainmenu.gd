extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect2/AnimationPlayer.play("creditfade")
	$TitleScreenMenuHighlight1.hide()
	$TitleScreenMenuHighlight2.hide()
	$TitleScreenMenuHighlight3.hide()

func _on_play_area_2d_mouse_entered():
	$TitleScreenMenuHighlight1.show()
	$MenuHover.play()
	
func _on_credits_area_2d_mouse_entered():
	$TitleScreenMenuHighlight2.show()
	$MenuHover.play()

func _on_quit_area_2d_mouse_entered():
	$TitleScreenMenuHighlight3.show()
	$MenuHover.play()

func _on_play_area_2d_mouse_exited():
	$TitleScreenMenuHighlight1.hide()

func _on_credits_area_2d_mouse_exited():
	$TitleScreenMenuHighlight2.hide()

func _on_quit_area_2d_mouse_exited():
	$TitleScreenMenuHighlight3.hide()
	
	
	########
func _on_play_button_pressed():
	$MenuClick.play()
	$PlayButton/PlayTimer.start()
	
func _on_play_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/cutscenes/cutscene1/cutscene1-1.tscn")

func _on_credits_button_pressed():
	$MenuClick.play()
	$CreditsButton/CreditsTimer.start()

func _on_credits_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/cutscenes/credits-scene2/credits.tscn")

func _on_quit_button_pressed():
	$MenuClick.play()
	$QuitButton/QuitTimer.start()

func _on_quit_timer_timeout():
	get_tree().quit()
