extends CharacterBody2D



func _physics_process(delta):
	# Handle Jump.
#	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
#		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * 400
	move_and_slide()
