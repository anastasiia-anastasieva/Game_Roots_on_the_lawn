extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text =str($Player.roots)
	pass


func _on_Timer_timeout():
	var c = load("res://roots.tscn").instance();
	c.position.x = rand_range(100, 1000)
	c.position.y = rand_range(100, 500)
	get_tree().current_scene.add_child(c)
	pass # Replace with function body.
