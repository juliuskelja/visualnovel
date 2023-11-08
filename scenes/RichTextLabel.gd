extends RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	visible_ratio = 0
	$Timer.start()
	$RichTextLabel.VC_CHARS_BEFORE_SHAPING = 0
	

func _on_timer_timeout():
	visible_ratio = 1.0
