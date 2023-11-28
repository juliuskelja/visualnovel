extends RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	visible_characters = 0

func _on_timer_timeout():
	visible_characters = visible_characters + 1
	
	# Stop the timer when the whole text is printed
	if visible_characters > len(get_text()):
		$Timer.stop()
