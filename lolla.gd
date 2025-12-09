extends Area2D

var speed = 600

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_down"):
		velocity.y = 1

	if Input.is_action_pressed("move_up"):
		print("move_up")
		velocity.y = -1

	if Input.is_action_pressed("move_right"):
		velocity.x = 1

	if Input.is_action_pressed("move_left"):
		velocity.x = -1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed * delta
		
		print(velocity)
		
	position += velocity
