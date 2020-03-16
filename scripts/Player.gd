extends RigidBody2D

export var speed = 512
export var jumpForce = 1024
export var jumpCount = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var lv = .get_linear_velocity()
	
	var axis = Input.get_action_strength("right") - Input.get_action_strength("left")
	var shouldJump = jumpCount > 0 && Input.is_action_just_pressed("jump")
	var appliedY = -jumpForce if shouldJump else lv.y
	var appliedX = axis * speed
	var applied = Vector2(appliedX, appliedY)
	
	.set_linear_velocity(applied)
	
	if shouldJump:
		jumpCount -= 1;
