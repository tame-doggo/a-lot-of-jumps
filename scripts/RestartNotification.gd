extends RichTextLabel

export(NodePath) var timerPath
onready var timer : Timer = get_node(timerPath)

func activate():
	timer.start()
	show()

func _on_Timer_timeout():
	hide()
