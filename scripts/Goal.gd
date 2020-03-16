extends Area2D

export(PackedScene) var nextScene

func _ready():
	if nextScene == null:
		print("Next scene cannot be null: ", nextScene)

func _on_Goal_body_entered(_body):
	if get_tree().change_scene_to(nextScene) != OK:
		print("Failed to change scene")
