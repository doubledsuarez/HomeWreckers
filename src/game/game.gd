extends Node2D

var bulletScene = preload("res://src/bullet/bullet.tscn")
var wreckerScene = preload("res://src/wrecker/wrecker.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	buildMap()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Wreckers.get_child_count() == 0:
		get_tree().change_scene_to_file("res://src/endScreen/end_screen.tscn")
	
	
func buildMap():
	for n in range(1, 10):
		var wreckerInstance = wreckerScene.instantiate()
		wreckerInstance.position.x = n * 64
		wreckerInstance.position.y = 32
		wreckerInstance.scale = Vector2(1.5, 1.5)
		$Wreckers.add_child(wreckerInstance)
		
	for n in range(1, 10):
		var wreckerInstance = wreckerScene.instantiate()
		wreckerInstance.position.x = n * 64
		wreckerInstance.position.y = 80
		wreckerInstance.scale = Vector2(1.5, 1.5)
		$Wreckers.add_child(wreckerInstance)
		
	for n in range(1, 10):
		var wreckerInstance = wreckerScene.instantiate()
		wreckerInstance.position.x = n * 64
		wreckerInstance.position.y = 128
		wreckerInstance.scale = Vector2(1.5, 1.5)
		$Wreckers.add_child(wreckerInstance)
	

func _on_player_shot():
	var bulletInstance = bulletScene.instantiate()
	bulletInstance.position.x = $Player.position.x
	bulletInstance.position.y = 300
	$Bullets.add_child(bulletInstance)
