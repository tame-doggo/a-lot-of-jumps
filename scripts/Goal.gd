extends Area2D

export(String, FILE, "*.tscn,*.scn") var next_scene_path

func _on_Goal_body_entered(_body):
	if get_tree().change_scene(next_scene_path) != OK:
		print("Failed to change scene")
