extends RigidBody2D

export var speed = 128

func _unhandled_input(event):
	var axis = event.get_action_strength("right") - event.get_action_strength("left")
	print(axis)
	.set_axis_velocity(Vector2(axis * speed, 0))

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
