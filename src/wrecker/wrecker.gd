extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func die():
	$AnimatedSprite2D.play("explode")


func _on_animated_sprite_2d_animation_finished():
	queue_free()
