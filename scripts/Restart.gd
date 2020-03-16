extends Node

func _process(_delta):
	if Input.is_action_just_pressed("restart"):
		restart()

func restart():
	if get_tree().reload_current_scene() != OK:
		print("Failed to reload scene")
