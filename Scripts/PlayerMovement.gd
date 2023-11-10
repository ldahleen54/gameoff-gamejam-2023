extends CharacterBody2D


const SPEED = 180.0
const JUMP_VELOCITY = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
const GRAVITY = 15 # num of pixels, edit to change speed of falling

func _physics_process(delta):
	# Player gravity
	velocity.y += GRAVITY

	# Handle Jump.
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y -= JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	
	if is_on_floor():
		var direction = Input.get_axis("ui_left", "ui_right")
		velocity.x = direction * SPEED
	else:
		pass

	move_and_slide()
	
	if is_on_floor():
		velocity.y = 0
