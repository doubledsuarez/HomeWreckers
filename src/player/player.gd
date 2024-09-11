extends CharacterBody2D

signal shot

@onready var screen_size = get_viewport_rect().size
#@onready var player_size = $CollisionPolygon2D.get_shape().get_rect().size

var player_size = Vector2(50, 50)

var speed : int

# Called when the node enters the scene tree for the first time.
func _ready():
	speed = 350


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		position.x += speed * delta
	elif Input.is_action_pressed("move_left"):
		position.x -= speed * delta
		
	# make sure player doesn't leave the screen
	position.x = clampi(position.x, player_size.x / 2, screen_size.x - player_size.x / 2)
	
	
func _input(event):
	if event.is_action_pressed("shoot"):
		$Shoot.play()
		shot.emit()
