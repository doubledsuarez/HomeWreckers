extends Area2D

var speed : int

# Called when the node enters the scene tree for the first time.
func _ready():
	speed = 150


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _physics_process(delta):
	position.y -= delta * speed


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_area_entered(area):
	area.die()
	queue_free()
