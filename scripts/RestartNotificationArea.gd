extends Area2D

export(NodePath) var notificationNodePath
onready var notificationNode : Node2D = get_node(notificationNodePath)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(_body):
	notificationNode.activate()
