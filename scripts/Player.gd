extends RigidBody2D

export(NodePath) var jump_label_path

export var speed = 512
export var jump_force = 1024
export var jump_count = 1 setget set_jump_count

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	var lv = .get_linear_velocity()
	
	var axis = Input.get_action_strength("right") - Input.get_action_strength("left")
	var should_jump = jump_count > 0 && Input.is_action_just_pressed("jump")
	var applied_y = -jump_force if should_jump else lv.y
	var applied_x = axis * speed
	var applied = Vector2(applied_x, applied_y)
	
	.set_linear_velocity(applied)
	
	if should_jump:
		set_jump_count(jump_count - 1)

func set_jump_count(new_value):
	jump_count = new_value
	get_node(jump_label_path).set_text(str(jump_count))
